# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  {
    :name => 'Space',
    :tags_attributes => [
      { :name => 'boating' },
      { :name => 'cloud' },
      { :name => 'social analytics' },
      { :name => 'mobile gaming' },
      { :name => 'social media' },
      { :name => 'photo sharing' }
    ]
  },

  {
    :name => 'Business model',
    :tags_attributes => [
      { :name => 'freemium' },
      { :name => 'advertising' },
      { :name => 'product sales' },
      { :name => 'enterprise' },
      { :name => 'collaborative consumption' },
      { :name => 'subscription' }
    ]
  },

  {
    :name => 'Founders',
    :tags_attributes => [
      { :name => 'technical' },
      { :name => 'Stanford' },
      { :name => 'designer' },
      { :name => 'MIT' },
      { :name => 'serial entrepreneur' },
      { :name => 'fresh graduate' }
    ]
  },

  {
    :name => 'Culture',
    :tags_attributes => [
      { :name => 'flexible' },
      { :name => 'casual' },
      { :name => 'fun' },
      { :name => 'business' },
      { :name => 'young' }
    ]
  }
].each { |category|
  record = Category.find_or_create_by_name(category[:name])
  record.update_attributes(category)
}

[
  {
    :name => 'Boatbound',
    :img_url => 'https://s3.amazonaws.com/photos.angel.co/startups/i/146025-33270c516b44cb3a16a469932598747a-thumb_jpg.jpg?buster=1355260805',
    :description => 'Airbnb for boat rentals'
  },

  {
    :name => 'Crowdbooster',
    :img_url => 'http://blogs-images.forbes.com/tomiogeron/files/2011/08/crowdbooster-logo.jpeg',
    :description => 'Social media analytics'
  }
].each { |startup|
  record = Startup.find_or_create_by_name(startup[:name])
  record.update_attributes(startup)
}

[
  {
    :startup_id => 1,
    :tag_id => 1
  },

  {
    :startup_id => 1,
    :tag_id => 11
  },

  {
    :startup_id => 2,
    :tag_id => 3
  },

  {
    :startup_id => 2,
    :tag_id => 7
  },
].each { |startup_tag|
  StartupTag.create(startup_tag)
}