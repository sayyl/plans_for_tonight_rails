class CorporatesController < ApplicationController

  def index
    @corporates = Corporate.all 
  end

  def show
    @corporate = Corporate.find(params[:id])
  end

  def new
    @corporate = Corporate.new
  end

  def create 
    @corporate = Corporate.new(corporate_params)
    if @corporate.save 
      session[:user_id] = @corporate.id 
      redirect_to events_path
    else
      render :new 
    end
  end

  def edit
  end

  protected

  def corporate_params 
    params.require(:corporate).permit(:name, :address_1, :address_2, :city, :province, :postal_code, :country, :phone, :email, :business_number, :password, :password_confirmation, :verified)
  end
end
