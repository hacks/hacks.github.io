class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id params[:id]

    unless @user
      render :file => 'public/404', :status => :not_found, :layout => false
    end
  end

end
