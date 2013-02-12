require 'spec_helper'

describe Retro do
  let(:retro) { create :retro }

  context "setup" do

    it "has no remarks to begin with" do
      retro.remarks.count.should eq 0
    end

    it "has a valid factory" do
      retro.should be_valid
    end

  end

  context "validations" do
    it "has a name" do
        build(:retro, :name => "Elephant").should be_valid
      end

      it "has a state" do
        create(:retro, :state => "Fishy")
        Retro.find_by_state("Fishy").should be_kind_of(Retro)
      end

      it "is valid without a state" do
        build(:retro, :state => nil).should be_valid
      end

      it "is has a date" do
        build(:retro, :date => Date.new).should be_valid
      end

      it "is invalid without a date" do
        build(:retro, :date => nil).should_not be_valid
      end
  end

  context "with a team" do
    let(:team) { create :team }
    let(:retro_with_team) { create(:retro, :team => team) }
    it "has a team" do
      retro_with_team.team.should eq team
    end
  end

  it "allows voting by default"
  it "does not allow voting when the state is closed"

end
