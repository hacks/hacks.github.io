class SiteController < ApplicationController

  def index
    @upcoming_events = Event.all(:order => "datetime",
      :conditions => ["datetime > ?", DateTime.now.beginning_of_day])
  end

end
