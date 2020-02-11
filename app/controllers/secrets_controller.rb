class SecretsController < ApplicationController
  def show
    redirect_to login_path unless logged_in?
    current_user
    # if logged_in?
    #   current_user
    # else
    #   redirect_to login_path
    # end
  end
end