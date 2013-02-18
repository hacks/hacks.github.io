# This will guess the User class
FactoryGirl.define do
  factory :user do
    sequence(:name) {|n| "User Name #{n}" }
    sequence(:email) {|n| "useremail#{n}@factory.com" }
    password "foobar"
    password_confirmation { |u| u.password }
  end
end