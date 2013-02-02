class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.string :description
      t.string :img_url
      t.string :angellist_url
      t.string :company_url
      t.timestamps
    end
  end
end
