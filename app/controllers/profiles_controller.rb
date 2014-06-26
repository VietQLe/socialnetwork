class ProfilesController < ApplicationController

  def edit
    @user = User.where({id: params[:id]}).first
    @user.profile = @user.profile || Profile.new
  end

  def update
    user = User.where({id: params[:id]}).first
    user.profile = user.profile || Profile.new
    user.profile.first_name = params[:profile][:first_name]
    user.profile.last_name = params[:profile][:last_name]
    user.profile.bio = params[:profile][:bio]
    user.profile.save!
    redirect_to "/profile/#{user.id}"
  end

end
