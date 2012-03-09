class PagesController < ApplicationController
  def index
    @upcoming = Event.upcoming.limit(5)
    @next = @upcoming.first
  end
end
