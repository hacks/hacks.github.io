class Event < ActiveRecord::Base
  attr_accessible :datetime, :description, :name, :tag
  belongs_to :user
end
