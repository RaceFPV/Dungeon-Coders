class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :get_player
  
  def get_player
    if current_player
      return current_player
	  else
      return guest_player
    end
  end
  
end
