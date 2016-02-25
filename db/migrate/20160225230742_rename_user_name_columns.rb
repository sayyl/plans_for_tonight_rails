class RenameUserNameColumns < ActiveRecord::Migration
  def change
    rename_column :consumers, :user_name, :name 
  end
end
