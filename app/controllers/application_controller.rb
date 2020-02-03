class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
      session[:name] 
  end
  
  private def logged_in?
    redirect_to login_path if current_user.blank?
  end



end
