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

  context "creation" do
    it "creates the record in the database" do
      expect {
        retro.save.should be_true
      }.to change(Retro, :count).by(1)
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

  context "editing" do
    let(:team) { create(:team) }
    let(:team_two) { create(:team) }
    before do
      create(:retro, :name => "First Retro",
             :state => "Fishy",
             :date => Date.today,
             :voting_allowed => false,
             :team_id => team.id
      )

    end

    it "allows changing the name" do
      retro.update_attributes!({:name => "Nemo"})
      retro.name.should eq("Nemo")
    end

    it "allows editing of state" do
      retro.update_attributes!({:state => "Open"})
      retro.state.should eq("Open")
    end

    it "allows editing of date" do
      retro.update_attributes!({:date => Date.tomorrow})
      retro.date.should eq(Date.tomorrow)
    end

    it "allows toggling of 'voting allowed'" do
      retro.update_attributes!({:voting_allowed => true})
      retro.voting_allowed.should be_true
    end

    it "allows you to change team" do
      retro.update_attributes!({:team_id => team_two.id})
      retro.team.id.should eq team_two.id
    end

  end

  context "deleting a retro with remarks" do
    let(:retro_with_remarks) {create (:retro_with_remarks)}

    it "deletes the retro" do
      retro_with_remarks.remarks.count.should eq 3
      expect {
        retro_with_remarks.destroy
      }.to change(Remark, :count).by(-3)
    end

  end

end
