class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

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
