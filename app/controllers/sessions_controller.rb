class SessionsController < ApplicationController

    def new 
    end 

    def create
        if params[:name].blank? || params[:name].nil?
            redirect_to login_path
        else 
            session[:name] = params[:name]
            redirect_to user_path
        end 
    end 

    def show
    end 

    def destroy
        session.delete :name 
    end 
    
end 