class AddImageUrlToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :remote_image_url, :string
  end
end
