class AddDiscountToEvents < ActiveRecord::Migration
  def change
    add_column :events, :discount, :integer
  end
end
