class SecretsController < ApplicationController

    def show
        if !logged_in?
            redirect_to new_session_path
        end
    end
    
end