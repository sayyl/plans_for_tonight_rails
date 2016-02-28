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
  validates :website_url, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :business_number, presence: true, numericality: { only_integer: true }

  has_secure_password 

 
end

