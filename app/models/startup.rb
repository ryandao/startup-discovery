class Startup < ActiveRecord::Base
  attr_accessible :name, :description, :img_url, :company_url, :angellist_url

  has_many :startup_tags
  has_many :tags, through: :startup_tags
end
