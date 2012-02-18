class Announcement < ActiveRecord::Base

    validates :subject, :presence => true
    validates :body, :presence => true

end
