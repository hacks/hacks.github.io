class EventsController < ApplicationController

  before_filter :authenticate_user!
  before_filter do
    redirect_to :root unless current_user && current_user.admin
  end

  def new
    @user = current_user
    @event = @user.events.new
  end

  def create
    @user = current_user
    @event = @user.events.new params[:event]

    if @event.save
      redirect_to :root, :notice => "Event created"
    else
      render :action => 'new'
    end
  end

end
