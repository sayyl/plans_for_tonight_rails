class Transaction < ActiveRecord::Base
  belongs_to :consumer
  belongs_to :event
  has_many :tickets
  validates :total, presence: true, numericality: true
  # validates :successful, allow_blank: true

  def self.total_price(event,general_count,child_count)
    return ( (event.general_ticket.to_i * general_count.to_i) + (event.child_ticket.to_i  * child_count.to_i) ) * 100
  end

  # 1. create the tickets and add them to the consumer
  # 2. decrement the available seats from event
  # 3. Create and return transaction
  def self.new_trasaction(event,user_id, general_count,child_count, amount, charge_id)
    event.ticket_available -= general_count.to_i
    event.ticket_available -= child_count.to_i
    event.save!
    transaction = self.create(consumer_id: user_id, event_id: event.id, total: amount, successful: true)
    transaction.save!
    for i in 1..general_count.to_i 
      Ticket.create(event_id: event.id, transaction_id: transaction.id, price: event.general_ticket, ticket_type: "general", confirmation_num: sprintf('%09d', rand(9**9)))
    end
    for i in 1..child_count.to_i
      Ticket.create(event_id: event.id, transaction_id: transaction.id, price: event.child_ticket, ticket_type: "child", confirmation_num: sprintf('%09d', rand(9**9)))
    end
    return transaction
  end
end







