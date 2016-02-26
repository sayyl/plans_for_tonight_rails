class Event < ActiveRecord::Base
  belongs_to :corporate
  has_many :tickets

  validates :name, presence: true
  validates :location, presence: true
  validates :show_date, presence: true
<<<<<<< Updated upstream
  # validates :image, presence: true
  validates :description, presence: true
=======
  # validates :start_time, presence: true
  validates :duration, numericality: { only_integer: true }
  # validates :image, presence: true
  validates :description, presence: true
  validates :show_date, presence: true
>>>>>>> Stashed changes
  validates :duration, numericality: { only_integer: true }

  mount_uploader :image, ImageUploader
end
