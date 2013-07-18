class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by_username(params[:username])
    authenticated_user = user.authenticate(params[:password]) if user
    if authenticated_user
      session[:user_id] = authenticated_user.id
      message = "You are authenticated"
      render text: message, layout: true
    else
      redirect_to sessions_new_path
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to sessions_new_path
  end
end