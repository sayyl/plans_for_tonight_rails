class AddGeneralTicketToEvents < ActiveRecord::Migration
  def change
    add_column :events, :general_ticket, :decimal 
  end
end
