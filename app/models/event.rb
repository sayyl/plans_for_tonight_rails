class Event < ActiveRecord::Base
  belongs_to :corporate
  has_many :tickets

  validates :name, presence: true
  validates :location, presence: true
  validates :show_date, presence: true 
  validates :description, presence: true
  validates :ticket_available, numericality: {only_integer: true, greater_than_or_equal_to: 1 }
  # validates :start_time, presence: true
  validates :duration, numericality: { only_integer: true }
  validates :show_date, presence: true
  validates :general_ticket, presence: true
  validates :child_ticket, presence: true
  validates :show_date_present
  mount_uploader :image, ImageUploader



  def self.past
    where("show_date < '#{Time.now}'")
  end

  def self.future
    where("show_date >= '#{Time.now}'")
  end

  def self.twodays
    future.where("show_date <= '#{Time.now + 48.hours}' ")
  end

  def self.oneday
    future.where("show_date <= '#{Time.now + 24.hours}' ")
  end

  def self.twelvehours
    future.where("show_date <= '#{Time.now + 12.hours}' ")
  end

  def self.sixhours
    future.where("show_date <= '#{Time.now + 6.hours}' ")
  end

  def tags
    if (self.show_date > Time.now and self.show_date <= Time.now + 6.hours)
      return "sixhours"
    elsif (self.show_date > Time.now and self.show_date <= Time.now + 12.hours)
      return "twelvehours"
    elsif (self.show_date > Time.now and self.show_date <= Time.now + 24.hours)
      return "oneday"
    elsif (self.show_date > Time.now and self.show_date <= Time.now + 48.hours)
      return "twodays"
    end
  end

  def start_time
        self.show_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  end

end

