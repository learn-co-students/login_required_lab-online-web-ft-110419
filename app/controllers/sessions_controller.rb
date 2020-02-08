class SessionsController < ApplicationController 

    def new
    end

    def create
        if params[:name]
            if !params[:name].empty?
                session[:name] = params[:name]
                redirect_to secrets_path
            else
                redirect_to login_path
            end
        else
            redirect_to login_path
        end
    end

    def destroy
        if session[:name]
            session.delete :name
        else
            redirect_to '/login'
        end
    end

end