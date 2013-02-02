class Category < ActiveRecord::Base
  attr_accessible :name, :tags_attributes

  has_many :tags
  accepts_nested_attributes_for :tags
end
