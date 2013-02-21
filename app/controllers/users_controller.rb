class UsersController < ApplicationController
  include SessionsHelper

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])

    unless @user
      render :file => 'public/404', :status => :not_found, :layout => false
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => 'signed up!'
    else
      error_strings = @user.errors.map { |f,e| "#{f} #{e}".gsub('_', ' ') }
      flash.now.alert = error_strings.join(', ')
      render 'new'
    end
  end

end
