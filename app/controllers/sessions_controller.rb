class SessionsController < ApplicationController
  def new
  end

  def create
    user = Corporate.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to corporate_path, notice: "Welcome back"
    else
      user = Consumer.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to events_path, notice: "Welcome back #{user.username}"
      else
        flash.now[:alert] = "Log in Failed"
        render :new
      end
    end

    def destroy 
      session[:user_id] = nil 
      redirect_to events_path, notice: "See you soon!"
  end
end
