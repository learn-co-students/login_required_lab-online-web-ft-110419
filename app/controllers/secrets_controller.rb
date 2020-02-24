class SecretsController < ApplicationController
  before_action :is_logged_in

  def show

  end

   def is_logged_in
     redirect_to controller: 'sessions', action: 'new' unless current_user
   end
end
