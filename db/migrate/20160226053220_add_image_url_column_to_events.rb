class AddImageUrlColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :remote_image_url, :string
  end
end
