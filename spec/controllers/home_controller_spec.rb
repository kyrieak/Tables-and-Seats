require 'spec_helper'

describe HomeController do

  describe "#index" do
    it "exists" do
      get :index
      response.status.should == 200
    end
  end

end
