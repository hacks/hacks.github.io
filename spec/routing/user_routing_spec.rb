require 'spec_helper'

describe "routes for User" do

  it "routes /users to users#index" do
    { :get => '/users' }.should route_to(:controller => 'users',
                                         :action => 'index')
  end

  it "routes /users/:id to users#show" do
    { :get => '/users/1' }.should route_to(:controller => 'users',
                                           :action => 'show',
                                           :id => '1')
  end

end