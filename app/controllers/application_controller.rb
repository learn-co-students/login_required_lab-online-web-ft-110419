class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  	def homepage
  		prevent
  		@username = session[:name]
  		render '/homepage'
  	end


	def is_logged_in?
		!!session[:name]
	end
	def current_user
		@user = @user ||= session[:name]
	end
	def prevent
		if !is_logged_in?
			redirect_to '/login'
		end
	end
end
