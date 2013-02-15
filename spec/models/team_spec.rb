require 'spec_helper'

describe Team do
  let(:team) { create :team }

  it "responds to users" do
    team.should respond_to(:users)
  end

  it "responds to retros" do
    team.should respond_to(:retros)
  end

  context "creating a team" do

    it "creates a new team" do
      expect {
        team.save.should be_true
      }.to change(Team, :count).by(1)
    end

    it "can have a name" do
      team.name = "GoTeam!"
      team.save.should be_true
    end

  end

  context "Add users as members to a team" do

    it "lets us add a user to a team" do
      user = create(:user)
      team.memberships.create(:user_id => user.id)
      team.users.last.should eq(user)
      team.users.count.should eq(1)
    end

    context "Memberships are unique" do
      it "teams enforce user only one" do
        user = create(:user)
        team.memberships.create(:user_id => user.id)
        team.memberships.create(:user_id => user.id)
        team.users.count.should eq(1)
      end

      it "users enforce team only one" do
        user = create(:user)
        team = create(:team)
        user.memberships.create(:team_id => team.id)
        user.memberships.create(:team_id => team.id)
        user.teams.count.should eq(1)
      end
    end

  end

end
