class AddCategoryToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :category, index: true
  end
end
