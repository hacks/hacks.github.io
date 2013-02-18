require 'spec_helper'

describe "routes for Site" do

  it "routes root to site#index" do
    { :get => "/" }.should route_to(:controller => 'site',
                                    :action => 'index')
  end

end