require 'spec_helper'

describe SiteController do

  before(:all) { @events = FactoryGirl.create_list(:event, 20) }
  after(:all)  { User.destroy_all } # destroys all users and thier events

  describe "GET index" do
    before(:each) do
      get :index
    end

    it "has a status of 200" do
      response.response_code.should == 200
    end

    it "has at least 1 event" do
      assigns(:upcoming_events).size.should >= 1
    end

    it "does not have past events" do
      assigns(:upcoming_events).each do |event|
        event.datetime.should > DateTime.now.beginning_of_day
      end
    end

    it "renders site/index" do
      page.should render_template("site/index")
    end
  end

end