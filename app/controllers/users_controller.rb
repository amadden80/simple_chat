class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params) #uses the new strong parameters
    if @user.save
      session[:user_id] = @user.id #automatically logs user in after they sign up
      redirect_to root_path
    else
      redirect_to new_user_path
    end
  end

  #New Rails 4 strong parameters
  private
  def user_params
    #Requires the user hash to be inside of the params hash and to have the following attributes
    params.require(:user).permit(:username, :password, :password_confirmation, :remote_image_url)
  end

end