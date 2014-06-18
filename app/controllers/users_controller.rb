class UsersController < ApplicationController
	def index
	end

	def new
	end

	def create
		user = User.new
		user.email = params[:user][:email]
		user.password = params[:user][:password]
		user.password = params[:user][:password_confirmation]
		user.save!
		redirect_to '/login'
	end

	def show
	end
end
