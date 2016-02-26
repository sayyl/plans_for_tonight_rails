class RemoveEventFromCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :event_id  
  end
end
