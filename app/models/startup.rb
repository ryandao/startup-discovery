class Startup < ActiveRecord::Base
  attr_accessible :name, :description, :img_url, :company_url, :angellist_url

  has_many :startup_tags
  has_many :tags, through: :startup_tags

  scope :have_tags, lambda { |tags|
    joins(:tags).where(:tags => {:id => tags}).group('startups.id').having("count(startup_tags.tag_id) = #{tags.count}")
  }
end
