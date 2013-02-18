class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :name, :github, :twitter

  has_many :events

  validates :name, :presence => true, :uniqueness => true
  validates :twitter, :format => { :with => /^[A-Za-z0-9_]{1,15}$/ },
                      :allow_blank => true
  validates :github, :format => { :with => /^[a-zA-Z0-9][a-zA-Z0-9-]{1,39}$/ },
                      :allow_blank => true
end
