class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation,
                  :firstname, :lastname, :github, :twitter

  has_secure_password
  has_many :events

  validates :password, :presence => true, :length => (6..128),
                       :on => :create
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :email, :presence => true, :uniqueness => true,
                    :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :twitter, :format => { :with => /^[A-Za-z0-9_]{1,15}$/ },
                      :allow_blank => true
  validates :github, :format => { :with => /^[a-zA-Z0-9][a-zA-Z0-9-]{1,39}$/ },
                      :allow_blank => true

  def name
    "#{firstname.downcase} #{lastname.downcase}"
  end
end
