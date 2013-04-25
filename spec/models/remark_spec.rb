require 'spec_helper'

describe Seat do
  let(:seat) {create :seat}

  it "returns a connotation" do
    seat.connotation.name.should eq "Neutral"
  end

  it "is invalid without a connotation" do
    build(:seat, :connotation => nil).should_not be_valid
  end

  it "is not valid without content" do
    build(:seat, :content => "").should_not be_valid
  end
end
