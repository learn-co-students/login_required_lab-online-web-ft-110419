class SessionsController < ApplicationController

    def new
        
    end

    def create
        if !params[:name].blank? && !params[:name].nil?
            session[:name] = params[:name]
        else
            redirect_to new_session_path
        end
    end

    def destroy
        if logged_in?
            session.delete :name
        end
    end

    private

    def require_login 
        unless logged_in?
            redirect_to new_session_path
        end
    end
    
end