require "spec_helper"

describe "site/index.html.erb" do

  before(:each) do
    assign(:events, FactoryGirl.create_list(:event, 20))
    render :template => 'site/index', :layout => 'layouts/application'
  end

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