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
    sum = 0
    transaction_hash = {}
    self.events.limit(5).each do |event| 
      event.transactions.limit(5).each do |transaction|
        sum += transaction.total.to_i
      end
      transaction_hash[event.name] = sum
    end
    return transaction_hash
  end

  # def calculate_transactions_with_date
  #   transaction_array = []
  #   self.events.each do |event| 
  #     event.transactions.each do |transaction| 
  #       transaction_array << transaction
  #     end
  #   end
  #   return transaction_array
  # end

  def transaction_on(month)
    total = 0
    self.events.limit(5).each do |event| 
      event.transactions.limit(5).where("extract(month from created_at) = ?", month).each do |transaction| 
        total += transaction.total.to_f
      end
    end
    return total
  end

  # def transaction_by_month 
  #   months = {"January" => 0, "February" => 0, "March" => 0, "April" => 0, "May" => 0, "June" => 0, "July" => 0, "August" => 0, "September" => 0, "October"=> 0, "November" => 0, "December" => 0}

  #   # 1. loop the result month and total
  #   months.each do |key, value|
  #     months[key] = Transaction.joins(:event).where("events.corporate_id = #{current_user.id}").where("extract(month from created_at) = ?", Date::MONTHNAMES.index(key))
  #   end

  #  return months

  #   # result = {"january": 8000, "february: 100000"}
  # end



  def transactions_by_month 
    months = [0,0,0,0,0,0,0,0,0,0,0,0]

    # 1. loop the result month and total
    for i in 0..11
      Transaction.joins(:event).where("events.corporate_id = #{self.id}").where("extract(month from transactions.created_at) = ?", i).each do |t|
        months[i] += t.total.to_i
      end
    end

   return months

    # result = {"january": 8000, "february: 100000"}
  end

end



