class Event < ActiveRecord::Base
  attr_accessible :datetime, :description, :name, :tags
  belongs_to :user

  validates_presence_of :datetime, :description, :name
end
