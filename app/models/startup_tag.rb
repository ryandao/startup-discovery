class StartupTag < ActiveRecord::Base
  attr_accessible :startup_id, :tag_id

  belongs_to :startup
  belongs_to :tag
end
