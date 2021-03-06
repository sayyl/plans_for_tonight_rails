class Consumer < ActiveRecord::Base
  has_many :transactions

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  has_secure_password 

  def my_event(event)
    return false
  end
end
