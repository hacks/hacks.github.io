class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :firstname, :lastname, :github, :twitter

  has_many :events

  validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates :twitter, :format => { :with => /^[A-Za-z0-9_]{1,15}$/ },
                      :allow_blank => true
  validates :github, :format => { :with => /^[a-zA-Z0-9][a-zA-Z0-9-]{1,39}$/ },
                      :allow_blank => true

  def name
    "#{firstname.downcase} #{lastname.downcase}"
  end
end
