class SessionsController < ApplicationController
    def show
        byebug
    end
    def new

    end 
    def create
       
        if params[:name].blank?
            redirect_to '/sessions'
        else 
            session[:name]= params[:name]
            redirect_to '/'
        end
    end
    def destroy
        session.clear if current_user
    end
end
