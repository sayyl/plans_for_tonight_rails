class AddChildTicketToEvents < ActiveRecord::Migration
  def change
    add_column :events, :child_ticket, :decimal 
  end
end
