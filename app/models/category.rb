class Category < ActiveRecord::Base
  has_many :events

  validates :name, presence: true
  validates :description, presence: true

  mount_uploader :image, ImageUploader
end
