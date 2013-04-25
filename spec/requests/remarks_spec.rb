require 'spec_helper'

describe "Seats" do
  describe "GET /seats" do
    it "works! (now write some real specs)" do
      get seats_path, :format => :json
      response.status.should be(200)
    end
  end
end
