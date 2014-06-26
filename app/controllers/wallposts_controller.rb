class WallpostsController < ApplicationController

	def create
		user = User.where(id: params[:id]).first
		wallpost = Wallpost.new
		wallpost.comment = params[:wallpost][:comment]
		wallpost.user_id = params[:user_id]
		wallpost.save!
		redirect_to :back
	end

end