require 'spec_helper'

describe "Remarks" do
  describe "GET /remarks" do
    it "works! (now write some real specs)" do
      get remarks_path, :format => :json
      response.status.should be(200)
    end
  end
end
