class RemoveCategoryStringFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :category 
  end
end
