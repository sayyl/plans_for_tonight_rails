class EventsController < ApplicationController
  
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
    @categories = Category.all
    @event = Event.new(event_params)
    @event.corporate_id = current_user.id
    if @event.save 
      redirect_to corporate_path(current_user.id)
    else
      render :new
    end
  end

  def edit
    @categories = Category.all
    @event = Event.find(params[:id])
  end

  def destroy 
    if current_user.my_event(@event) 
      @event = Event.find(params[:id])
      @event.destroy
    end
      redirect_to corporates_path
  end

  def update 
    @categories = Category.all
    @event = Event.find(params[:id])
    result = current_user.my_event(@event) ? @event.update_attributes(event_params) : false
    if result
      redirect_to corporate_event_path(current_user.id, @event.id)
    else
      render :edit 
    end
  end

  protected

  def event_params
    params.require(:event).permit(
      :name, :location, :show_date, :duration, :image, :description, :general_ticket, :child_ticket, :ticket_available, :viewed, :category_id, :remote_image_url, :discount
    )
  end
end

