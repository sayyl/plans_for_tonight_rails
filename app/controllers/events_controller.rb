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
    @event = Event.new(event_params)
    count= params[:ticket_available].to_i
    @event.corporate_id = current_user.id
    if @event.save 
      for i in 1..count 
        @event.tickets.create 
      end
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

