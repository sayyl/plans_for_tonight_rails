class Transaction < ActiveRecord::Base
  belongs_to :consumer
  attr_accessor :event_id , :general_count, :child_count 
  validates :total, presence: true, numericality: true
  # validates :successful, allow_blank: true
  before_save :total_price

  def total_price(event_id,general_count,child_count)
    event = Event.find(params[:id])
    general_ticket_num = general_count
    child_ticket_num = child_count
    return total = ((event.general_ticket.to_d * general_ticket_num) + (event.child_ticket.to_d * child_ticket_num))
  end
end
