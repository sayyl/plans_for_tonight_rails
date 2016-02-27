class Event < ActiveRecord::Base
  belongs_to :corporate
  has_many :tickets

  validates :name, presence: true
  validates :location, presence: true
  validates :show_date, presence: true
  validates :description, presence: true
  # validates :start_time, presence: true
  validates :duration, numericality: { only_integer: true }
  validates :show_date, presence: true

  mount_uploader :image, ImageUploader

  def self.past
    where("show_date < '#{Time.now}'")
  end

  def self.present
    where("show_date >= '#{Time.now}'")
  end
end
