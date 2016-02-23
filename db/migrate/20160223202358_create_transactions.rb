class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :consumer, index: true 
      t.decimal :total
      t.boolean :successful 
      t.timestamps
    end
  end
end
