class SessionsController < ApplicationController
    def show
     return head(:forbidden) unless session.include? :user_id
     @document = Document.find(params[:id])
    end
    def new
    end
    def create
        return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'
    end
    
    def destroy
        session.delete :name
        redirect_to controller: 'application', action: 'hello'
    end

end