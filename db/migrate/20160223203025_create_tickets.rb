class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :event, index: true 
      t.references :transaction, default: nil
      t.decimal :price 
      t.string :type 
      t.integer :confirmation_num
      t.timestamps
    end
  end
end
