class EventsController < ApplicationController
  
  def index
    @events = Event.all 
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
    # @event = Event.new(event_params)
    # if @event.save 
    #   redirect_to events_path, notice: "#{@event.name} was added successfully."
    # else
    #   render :new 
    # end
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
    @event = Event.find(params[:id])
  end

  def destroy 
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path 
  end

  def update 
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      redirect_to event_path(@event)
    else
      render :edit 
    end
  end

  protected

  def event_params
    params.require(:event).permit(
      :name, :location,:show_date, :start_time, :duration, :image, :description, :category, :ticket_available, :viewed
    )
  end
end

