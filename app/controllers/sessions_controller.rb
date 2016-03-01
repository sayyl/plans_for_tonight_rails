class SessionsController < ApplicationController
  def new
  end

  def create
    user = Corporate.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:role] = "corporate"
      redirect_to corporate_path(user), notice: "Welcome back #{user.name}"
    else
      user = Consumer.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        session[:role] = "consumer"
        redirect_to events_path, notice: "Welcome back #{user.name}"
      else
        flash.now[:alert] = "Log in Failed"
        render :new
      end
    end
  end

  def destroy 
    session[:user_id] = nil 
    redirect_to events_path, notice: "See you soon!"
  end
end
