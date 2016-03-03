class Event < ActiveRecord::Base
  belongs_to :corporate
  has_many :transactions
  has_many :tickets

  validates :name, presence: true
  validates :location, presence: true
  validates :show_date, presence: true 
  validates :description, presence: true
  validates :ticket_available, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  # validates :start_time, presence: true
  validates :duration, numericality: { only_integer: true }
  validates :show_date, presence: true 
  validates :general_ticket, presence: true
  # validate  :show_date_present


  mount_uploader :image, ImageUploader


  def show_date_present
    errors.add(:show_date, "Events can only be added if their show is atleast 6 hours ahead") if self.show_date < Time.now + 6.hours 
  end

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
    if (self.show_date > Time.now && self.show_date <= Time.now + 6.hours) 
      return "sixhours"
    elsif (self.show_date > Time.now && self.show_date <= Time.now + 12.hours)
      return "twelvehours"
    elsif (self.show_date > Time.now && self.show_date <= Time.now + 24.hours)
      return "oneday"
    elsif (self.show_date > Time.now && self.show_date <= Time.now + 48.hours)
      return "twodays"
    end
  end

  def start_time
        self.show_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  end

  def event_transactions_time
    transaction_per_hour = Array.new(48,0)
    sorted_transactions = self.transactions.where("created_at < '#{self.show_date}' AND created_at > '#{self.show_date - 48.hours}' ").order(created_at: :desc).to_a
    for transaction in sorted_transactions
      hour_difference = TimeDifference.between(self.show_date, transaction.created_at).in_hours
      transaction_per_hour[hour_difference] += 1
    end
    return transaction_per_hour
  end

  def recent_transactions_chart
    return LazyHighCharts::HighChart.new('graph') do |f|
      f.options[:legend][:layout] = "horizontal"
      f.title(text: "Number of transactions every hour before show")
      f.yAxis [
        {title: {text: "Total Transactions", margin: 70} }
      ]
      f.series(type: "bubble", name: "Number of Transactions", yAxis: 0, data: self.event_transactions_time)

      f.legend(align: 'right', verticalAlign: 'top', y: 75, x: -50, layout: 'vertical')
      f.chart({defaultSeriesType: "column"})
    end
  end

end

