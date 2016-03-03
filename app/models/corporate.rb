class Corporate < ActiveRecord::Base
  has_many :events

  validates :name, presence: true
  validates :address_1, presence: true
  # validates :address_2, allow_blank: true
  validates :city, presence: true
  validates :province, presence: true, length: { is: 2 }
  validates :postal_code, presence: true, format: { with: /\A[A-Z]{1}\d{1}[A-Z]{1}\s{1}\d{1}[A-Z]{1}\d{1}\z/, message: "please format your postal code V1V 1V1" }
  validates :country, presence: true
  validates :phone, presence: true
  # validates :website_url
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :business_number, presence: true, numericality: { only_integer: true }

  has_secure_password 

  def my_event(event)
    self.events.include?(event) 
  end


  def calculate_event_total_transactions
    result = []
    self.events.each do |event| 
      sum = 0
      event.transactions.each do |transaction|
        sum += transaction.total.to_i
      end
      result << sum
    end
    return result
  end

  # def calculate_event_total_transactions


  def transaction_on(month)
    total = 0
    self.events.each do |event| 
      event.transactions.limit(5).where("extract(month from created_at) = ?", month).each do |transaction| 
        total += transaction.total.to_f
      end
    end
    return total
  end


  def transactions_by_month 
    months = [0,0,0,0,0,0,0,0,0,0,0,0]

    # 1. loop the result month and total
    for i in 0..11
      Transaction.joins(:event).where("events.corporate_id = #{self.id}").where("extract(month from transactions.created_at) = ?", i).each do |t|
        months[i] += t.total.to_i
      end
    end

   return months

  end


  def percentage_ticket_per_event
    result = []
    sum = 0.0
    
    self.events.past.each do |e|
      total = (e.tickets.count * 100)/(e.tickets.count + e.ticket_available)
      result << {name: e.name, y: total}
      sum += total
    end 

    for i in 0..result.length-1
      result[i][:y] /= sum
      result[i][:y] = result[i][:y].round(2) * 100
    end 

    return result 
  end

end



