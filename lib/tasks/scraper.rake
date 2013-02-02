desc "Scrape AngelList to get list of companies and some tags"

task :angellist_scrape => :environment do |t|
  require 'open-uri'
  require 'nokogiri'
  require 'logger'

  # create a log file for the task
  log = Logger.new("#{Rails.root}/log/angellist_scraper.log")
  log.info "* Scraping started on #{DateTime.now}"

  # start scraping
  scraping_url = "https://angel.co/finder/load_more?page=1"
  doc = Nokogiri::HTML(open(scraping_url))
  startup_urls = []
  doc.css('div.items.section div.name a').each { |el|
    startup_urls << el[:href].gsub('\\"', '')
  }

  startup_urls.each { |url|
    create_startup_from_url(url)

  }

  log.info "Scraping finished on #{DateTime.now}"
  puts "Scraping finished on #{DateTime.now}"
end

task :scrape_angellist_url, [:url] => :environment do |t, args|
  require 'open-uri'
  require 'nokogiri'
  require 'logger'

  create_startup_from_url(args[:url])
end

def create_startup_from_url(url)
  p url
  doc = Nokogiri::HTML(open(url))
  name = doc.css('div.header div.name span').children.text
  description = doc.css('div.header div.high_concept').children.text
  company_url = doc.css('div.header a.website-link').first[:href]
  img_url = doc.css('div.header div.logo img').first[:src]
  tag_names = doc.css('a.market-tag').map { |a| a.children.text }

  tags = tag_names.map { |tag_name|
    tag = Tag.find_or_create_by_name(tag_name)
    tag.update_attributes(:category_id => 1)
    tag
  }

  startup = Startup.find_or_create_by_name(name)
  startup.update_attributes(
    :description => description,
    :img_url => img_url,
    :angellist_url => url,
    :company_url => company_url
  )

  tags.each { |tag|
    StartupTag.create(:tag_id => tag.id, :startup_id => startup.id)
  }
rescue Exception => e
  p e.message
end