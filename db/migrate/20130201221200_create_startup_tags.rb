class CreateStartupTags < ActiveRecord::Migration
  def change
    create_table :startup_tags do |t|
      t.belongs_to :startup
      t.belongs_to :tag
      t.timestamps
    end
  end
end
