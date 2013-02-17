class SiteController < ApplicationController

  def index
    @events = Event.all(:order => "datetime", :conditions => ["datetime > ?", DateTime.now.beginning_of_day])
  end

end
