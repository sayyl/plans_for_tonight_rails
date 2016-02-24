class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :corporate, index: true 
      t.references :category, index: true
      t.string :name
      t.string :location
      t.text :description 
      t.datetime :show_date 
      t.time :start_time
      t.integer :duration 
      t.string :image
      t.integer :viewed 
      t.timestamps
    end
  end
end
