class Category < ActiveRecord::Base
  has_many :events

  validates :name, presence: true

  mount_uploader :image, ImageUploader


  # def time(hours?)
  #   self.events.where('created_at < ?', Time.now)
  # end

end
