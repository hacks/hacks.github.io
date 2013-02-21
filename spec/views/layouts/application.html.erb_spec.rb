require "spec_helper"

describe "layouts/application.html.erb" do

  subject { Capybara::Node::Simple.new(rendered) }

  context "general" do
    before do
      render :text => nil, :layout => 'layouts/application'
    end

    it "has a link to users" do
      should have_link('users', :href => users_path)
    end

    it "has nuhacks somewhere" do
      should have_content('nuhacks')
    end
  end

  context "flashes" do
    before do
      flash[:notice] = "Notice 1"
      flash[:alert]  = "Alert 1"
      render :text => nil, :layout => 'layouts/application'
    end

    it "displays a single notice flash" do
      should have_css('.flash.notice', :text => /Notice 1/, :count => 1)
    end

    it "displays a single alert flash" do
      should have_css('.flash.alert', :text => /Alert 1/, :count => 1)
    end
  end

  context "not signed in" do
    before do
      render :text => nil, :layout => 'layouts/application'
    end

    it "has a login link" do
      should have_link('login', new_user_session_path)
    end
  end

  context "signed in" do
    before(:all) { @user = FactoryGirl.create(:user) }
    after(:all) { @user.destroy }
    before do
      sign_in :user, @user
      render :text => nil, :layout => 'layouts/application'
    end

    it "has the users name" do
      should have_content(@user.name)
    end

    it "has a logout link" do
      should have_link('logout', :href => destroy_user_session_path)
    end
  end

end