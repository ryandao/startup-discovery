class Tag < ActiveRecord::Base
  attr_accessible :category_id, :name

  belongs_to :category
  has_many :startup_tags
  has_many :startups, through: :startup_tags
end
