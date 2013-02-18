require "spec_helper"

describe "layouts/application.html.erb" do

  subject { Capybara::Node::Simple.new(rendered) }

  context "general" do
    before do
      render :text => nil, :layout => 'layouts/application'
    end

    it "has a link to projects" do
      should have_link('projects', :href => '/projects')
    end

    it "has a link to users" do
      should have_link('users', :href => '/users')
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
    let(:user) { FactoryGirl.create(:user) }
    before do
      sign_in :user, user
      render :text => nil, :layout => 'layouts/application'
    end

    it "has the users name" do
      should have_content('User Name')
    end

    it "has a logout link" do
      should have_link('logout', :href => destroy_user_session_path)
    end
  end

end