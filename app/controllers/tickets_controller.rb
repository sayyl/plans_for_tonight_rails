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

  def create 
    @ticket = Ticket.new 
    @ticket.event_id = params[:event_id]
    if @ticket.save 
    redirect_to  


  def edit 
    @ticket = Ticket.find(params[:id])
  end



  protected

  def ticket_params
    params.require(:ticket).permit(
      :price, :ticket_type
    )
  end
end



