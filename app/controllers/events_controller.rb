class EventsController < ApplicationController
  
  def index
    @events = Event.all 
    @categories = Category.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @category = Category.all
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
      :name, :location,:show_date, :start_time, :duration, :image, :description, :ticket_available, :viewed, :category_id
    )
  end
end

