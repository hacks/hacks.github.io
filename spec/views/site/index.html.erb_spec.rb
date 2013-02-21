require "spec_helper"

describe "site/index.html.erb" do

  before(:all) { assign(:upcoming_events, FactoryGirl.create_list(:event, 20)) }
  after(:all) { User.destroy_all } # users should destroy thier events
  before { render :template => 'site/index', :layout => 'layouts/application' }

  subject { Capybara::Node::Simple.new(rendered) }

  it "has a header" do
    should have_selector('h1', :text => /make what you .* what you make/)
  end

  it "has some copy" do
    should have_selector('p')
  end

  it "displays the next 5 events" do
    should have_css('.event', :count => 5)
  end

end