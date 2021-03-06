class Ticket < ActiveRecord::Base
  belongs_to :event
  belongs_to :transaction

  validates :price, presence: true
  validates :ticket_type, presence: true
  # validates :confirmation_num, presence: true, numericality: { only_integer: true }

end
