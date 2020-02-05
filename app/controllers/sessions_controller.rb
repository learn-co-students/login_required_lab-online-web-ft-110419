class SessionsController < ApplicationController
	def new
		if is_logged_in?
			redirect_to "/"
		else 
			render '/login'
		end
	end 
	def create
		if !params[:name].blank?
			session[:name] = params[:name]
			redirect_to '/'
		else 
			redirect_to '/login'
		end
	end
	def destroy
		if is_logged_in?
			session.delete(:name)
			redirect_to '/'
		end
	end
end