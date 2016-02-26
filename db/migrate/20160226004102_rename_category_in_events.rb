class RenameCategoryInEvents < ActiveRecord::Migration
  def change
    rename_column :events, :category_id, :category
  end
end
