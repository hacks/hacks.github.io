class PagesController < ApplicationController
  def index
    @events = Event.active
  end
end
