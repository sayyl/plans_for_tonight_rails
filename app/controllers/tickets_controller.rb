class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Tickets.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end


  def edit 
    @ticket = Ticket.find(params[:id])
  end



  protected

  def ticket_params
    params.require(:ticket).permit(
      :price, :type
    )
  end
end



