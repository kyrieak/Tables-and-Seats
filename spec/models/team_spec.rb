require 'spec_helper'

describe Team do
  let(:team) { create :team }

  it "responds to users" do
    team.should respond_to(:users)
  end

  it "responds to retros" do
    team.should respond_to(:retros)
  end
end
