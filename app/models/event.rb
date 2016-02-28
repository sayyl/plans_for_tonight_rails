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

  def self.twodays
    where(:show_date => Time.now..(Time.now + 48.hours))
  end

  def self.onedays
    where(:show_date => Time.now..(Time.now + 24.hours))
  end

  def self.twelvehours
    where(:show_date => Time.now..(Time.now + 12.hours))
  end

  def self.sixhours
    where(:show_date => Time.now..(Time.now + 6.hours))
  end

  def start_time
        self.show_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  end

end

