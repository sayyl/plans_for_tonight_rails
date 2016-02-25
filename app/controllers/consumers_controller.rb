class ConsumersController < ApplicationController

  def index
    @consumers = Consumer.all 
  end

  def show
    @consumer = Consumer.find(params[:id])
  end

  def new
    @consumer = Consumer.new
  end

  def create 
    @consumer = Consumer.new(consumer_params)
    if @consumer.save 
      session[:user_id] = @consumer.id 
      redirect_to events_path
    else
      render :new 
    end
  end

  def edit
  end

  protected

  def consumer_params
    params.require(:consumer).permit(:name, :email, :password, :password_confirmation)
  end
end

  