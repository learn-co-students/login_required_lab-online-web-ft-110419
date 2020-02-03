class SessionsController < ApplicationController
    before_action :logged_in?
    skip_before_action :logged_in?, only: [:new,:create,:destroy]

    def new
        
    end

    def create
        redirect_to login_path if params[:name].blank?
        session[:name] = params[:name]
    end

    def destroy
        session.clear if current_user
    end
end
  