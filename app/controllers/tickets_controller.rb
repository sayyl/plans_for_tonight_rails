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
    @ticket = Ticket.new(ticket_params)
    @ticket.consumer_id = current_user.id
    if @ticket.save 
      redirect_to tickets_path
    else
      render :new
  end
end
 def index
    @events = Event.all 
    @categories = Category.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @categories = Category.all
    @event = Event.new
  end

  def create 
    @event = Event.new(event_params)
    @event.corporate_id = current_user.id
    if @event.save 
      redirect_to corporates_path
    else
      render :new
    end
  end

  def edit
    @categories = Category.all
    @event = Event.find(params[:id])
  end

  def destroy 
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to corporates_path
  end

  def update 
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      redirect_to corporates_path
    else
      render :edit 
    end
  end

  protected

  def event_params
    params.require(:event).permit(
      :name, :location, :show_date, :duration, :image, :description, :ticket_available, :viewed, :category_id, :remote_image_url
    )
  end
end

