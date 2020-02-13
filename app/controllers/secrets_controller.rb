class SecretsController < ApplicationController

        before_action :required_login

    def show 
        @name = params[:name]
    end 
    
    def index
    end


    private

    def required_login
        return redirect_to "/login" unless session.include? :name
    end 

end