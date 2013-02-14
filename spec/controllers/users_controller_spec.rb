require 'spec_helper'

describe UsersController do
  let!(:user) { create :user }

  describe "#index" do
    before do
      get :index
    end
    xit "exists" do
      response.status.should eq 200
    end
  end

  #describe "#new" do
  #
  #end
  #
  #describe "delete" do
  #  let!(:user_to_delete){ create(:user) }
  #
  #  it "deletes a user" do
  #    expect {
  #      delete :destroy, {:id => user_to_delete}
  #    }.to change(User, :count).by(-1)
  #  end
  #end
  #
  #describe "#show" do
  #
  #  describe "success" do
  #    before do
  #      #post :create, :retro
  #    end
  #
  #    it "renders the #show view" do
  #      get :show, id: user.id
  #      response.should render_template :show
  #    end
  #  end
  #
  #  describe "failure" do
  #    it "raises an exception" do
  #      expect {
  #        get :show, id: "AnInvalidID"
  #      }.to raise_error ActiveRecord::RecordNotFound
  #    end
  #  end
  #end


end
