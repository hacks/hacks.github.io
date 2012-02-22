class Event < ActiveRecord::Base
  validates :name, :presence => true
end
