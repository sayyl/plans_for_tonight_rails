class AddEventRefToTransactions < ActiveRecord::Migration
  def change
    add_reference :transactions, :event, index: true
  end
end
