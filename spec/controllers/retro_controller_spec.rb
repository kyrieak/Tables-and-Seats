require 'spec_helper'

describe RetroController do
  describe "#index" do
    it "returns :success" do
      get :index
      response.status.should eq 200
    end
  end
end
