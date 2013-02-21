class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if authenticate(user, params[:password])
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end