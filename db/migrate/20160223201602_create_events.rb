class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :corporate, index: true 
      t.references :category, index: true
      t.string :name
      t.text :description 
      t.datetime :show_date 
      t.string :img_url
      t.integer :viewed 
      t.timestamps
    end
  end
end
