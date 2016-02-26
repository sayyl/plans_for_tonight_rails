class AddTicketsNumberToEvents < ActiveRecord::Migration
  def change
    add_column :events, :ticket_available, :integer
  end
end
