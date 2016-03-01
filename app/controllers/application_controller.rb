class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


    protected 

    def restrict_to_corporate 
      if !current_user or !(session[:role] == "corporate")
        flash[:alert] = "Acecess Denied"
        redirect_to events_path
      end
    end


    def restrict_purchase(event)
      if !current_user
        flash[:alert] = "You must Log in or Sign up to purchase a ticket"
        redirect_to event_path(event)
      end
    end


    def current_user
      if session[:role] == "corporate"
        @current_user ||= Corporate.find(session[:user_id]) if session[:user_id]
      else
        @current_user ||= Consumer.find(session[:user_id]) if session[:user_id]
      end
      return @current_user
    end

    @categories = Category.all 
    

  helper_method :current_user, :revert_user
end
