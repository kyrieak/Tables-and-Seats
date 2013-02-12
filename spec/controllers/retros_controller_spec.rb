require 'spec_helper'

describe RetrosController do
  describe "#index" do
    before do
      get :index
    end
    it "exists" do
      response.status.should eq 200
    end
  end

  describe "#new" do

  end
end
