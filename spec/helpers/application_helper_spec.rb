require 'spec_helper'
include ApplicationHelper
describe ApplicationHelper do
  describe "flash_class" do

    it "returns info for notices" do
      flash_class(:notice).should eq "info"
    end
    it "returns error for errors" do
      flash_class(:error).should eq "error"
    end
    it "returns warning for alert" do
      flash_class(:alert).should eq "warning"
    end

  end
end