class Event < ActiveRecord::Base
  belongs_to :corporate

  mount_uploader :image, ImageUploader
end
