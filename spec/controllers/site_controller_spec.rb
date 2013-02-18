require 'spec_helper'

describe SiteController do

  before(:all) do
    FactoryGirl.create_list(:event, 20)
  end

  let(:event) { FactoryGirl.create(:event) }

  describe "GET index" do
    before(:each) do
      get :index
    end

    it "has a status of 200" do
      response.response_code.should == 200
    end

    it "has at least 1 event" do
      assigns(:events).size.should >= 1
    end

    it "does not have past events" do
      assigns(:events).each do |event|
        event.datetime.should > DateTime.now.beginning_of_day
      end
    end
  end

end