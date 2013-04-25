require 'spec_helper'

describe Table do
  let(:retro) { create :retro }

  context "setup" do

    it "has no seats to begin with" do
      retro.seats.count.should eq 0
    end

    it "has a valid factory" do
      retro.should be_valid
    end

  end

  context "creation" do
    it "creates the record in the database" do
      expect {
        retro.save.should be_true
      }.to change(Table, :count).by(1)
    end
  end

  context "validations" do
    it "has a name" do
      build(:retro, :name => "Elephant").should be_valid
    end

    it "is invalid without a name" do
      build(:retro, :name => nil).should_not be_valid
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

  context "editing" do
    let(:team) { create(:team) }
    let(:team_two) { create(:team) }
    before do
      create(:retro, :name => "First Table",
             :date => Date.today,
             :voting_allowed => false,
             :team_id => team.id
      )

    end

    it "allows changing the name" do
      retro.update_attributes!({:name => "Nemo"})
      retro.name.should eq("Nemo")
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

  context "deleting a retro with seats" do
    let(:retro_with_seats) { create(:retro_with_seats) }

    it "deletes the retro" do
      retro_with_seats.seats.count.should eq 3
      expect {
        retro_with_seats.destroy
      }.to change(Seat, :count).by(-3)
    end

  end

  describe "connotations" do
    it "returns the connotations relevant to the retro" do
      retro.connotations.map do |c|
        c.name
      end.should eq ["Positive", "Neutral", "Negative"]
    end
  end

end
