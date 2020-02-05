class SecretsController < ApplicationController
	before_action :prevent
	def show
		render 'secret'
	end
end