class PagesController < ApplicationController
  def index
    @next_events = Event.where("end_time >= ?", Date.today).order("start_time asc").limit(5)
    @next_event = @next_events[1]
  end
end
