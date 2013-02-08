require 'spec_helper'

describe Retro do
  let(:retro) { create :retro }

  it "has no remarks to begin with" do
    retro.remarks.count.should eq 0
  end

  it "has a valid factory" do
    retro.should be_valid
  end

  it "has a name" do
    create(:retro, :name => "Elephant").should be_valid
  end

  it "has a state" do
    create(:retro, :state => "Fishy").should be_valid
    Retro.find_by_state("Fishy").should be_kind_of(Retro)
  end

  xit "is invalid without a state" do
    create(:retro, :state => nil).should be_invalid
  end

  it "is has a date" do
    create(:retro, :date => Date.new).should be_valid
  end
  it "is invalid without a date"

  it "allows voting by default"
  it "does not allow voting when the state is closed"
end
