require 'spec_helper'

describe Remark do
  let(:remark) {create :remark}

  it "returns a connotation" do
    remark.connotation.name.should eq "Neutral"
  end

  it "is invalid without a connotation" do
    build(:remark, :connotation => nil).should_not be_valid
  end
  it "is not valid without a title" do
    build(:remark, :title => "").should_not be_valid
  end
end
