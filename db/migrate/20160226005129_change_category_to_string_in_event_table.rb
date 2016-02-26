class ChangeCategoryToStringInEventTable < ActiveRecord::Migration
  def change
    change_column :events, :category, :string 
  end
end
