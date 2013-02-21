require 'spec_helper'

describe UsersController do

  before(:all) { @user = FactoryGirl.create(:user) }
  after(:all)  { @user.destroy }

  describe "GET index" do
    before(:each) do
      get :index
    end

    it "has a status of 200" do
      response.response_code.should == 200
    end
  end

  describe "GET show" do
    context "valid id" do
      before(:each) do
        get :show, :id => @user.id
      end

      it "has a status of 200" do
        response.response_code.should == 200
      end
    end

    context "invalid id" do
      before(:each) do
        get :show, :id => 2_315_121
      end

      it "has a status of 404" do
        response.response_code.should == 404
      end

      it "renders the 404 page" do
        response.should render_template(:file => 'public/404', :layout => false)
      end
    end
  end

end