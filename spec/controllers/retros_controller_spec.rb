require 'spec_helper'

describe RetrosController do
  let!(:retro) { create :retro }

  describe "#index" do
    before do
      get :index
    end
    it "exists" do
      response.status.should eq 200
    end
  end

  describe "#new" do

  end

  describe "delete" do
    let!(:retro_to_delete){ create(:retro) }

    it "deletes a retro" do
      expect {
        delete :destroy, {:id => retro_to_delete}
      }.to change(Retro, :count).by(-1)
    end
  end

  describe "#show" do

    describe "success" do
      before do
        #post :create, :retro
      end

      it "renders the #show view" do
        get :show, id: retro.id
        response.should render_template :show
      end
    end

    describe "failure" do
      it "raises an exception" do
        expect {
          get :show, id: "AnInvalidID"
        }.to raise_error ActiveRecord::RecordNotFound
      end
    end
  end

end
