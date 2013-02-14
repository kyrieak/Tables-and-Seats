require 'spec_helper'

describe User do
  let(:user) {create :user}
  it "has a factory" do
    user.should_not be_nil
  end
end
