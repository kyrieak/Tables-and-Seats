require 'spec_helper'

describe User do
  let!(:user) {create :user}
  let(:unsaved_user) { build :user }

  context "setup" do

    it "has a factory" do
      user.should_not be_nil
    end

  end

  context "creation" do
    it "creates the record in the database" do
      expect {
        unsaved_user.save.should be_true
      }.to change(User, :count).by(1)
    end
  end

  context "validations" do
    it "is invalid without an email" do
      build(:user, :no_email).should_not be_valid
    end

    it "is invalid without a password" do
      build(:user, :no_password).should_not be_valid
    end
  end

  context "editing" do

    it "allows changing email" do
      user.update_attributes!({:email => "a@a.com"})
      user.email.should eq("a@a.com")
    end

    it "allows changing password" do
      user.update_attributes!({:password => "changed_password"})
      user.password.should eq("changed_password")
    end
  end

  context "deleting" do
    it "allows deleting a user" do
      expect {
        user.destroy
      }.to change(User, :count).by(-1)
    end
  end


  end
