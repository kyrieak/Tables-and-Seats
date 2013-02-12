require 'spec_helper'

describe RemarksController do
  let!(:remark) { create :remark }

  describe "#create" do
    describe "success" do

      before do
        post :create, {:remark => {:title => "Remark", :connotation_id => 1}}
      end

      it "redirects to index page" do
        response.should redirect_to remarks_path
      end

      it "sets the flash message" do
        flash[:notice].should include "successfully created"
      end
    end

    describe "failure" do
      before do
        post :create, {:remark => {:title => nil}}
      end

      it "re-renders the new page" do
        response.should render_template :new
      end

    end
  end

  describe "#update" do

    describe "success" do

      before do
        put :update, {:id => remark.id, :remark => {:title => "Remark", :explanation => "Why I said this", :connotation_id => 2}}
      end

      it "redirects to the index page on success" do
        response.should redirect_to remarks_path
      end

      it "sets the flash message" do
        flash[:notice].should include "successfully updated"
      end

    end

    describe "failure" do

      before do
        put :update, {:id => remark.id, :remark => {:title => nil}}
      end

      it "redirects to the index page on success" do
        response.should render_template :edit
      end

      it "sets the flash message" do
        flash[:notice].should be_nil
      end

    end
  end

  describe "#show" do

    describe "success" do

      before do
        post :create, {:remark => {:title => "Remarkable", :connotation_id => 1}}
      end

      it "renders the #show view" do
        get :show, id: remark.id
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

describe "#delete" do

  describe "in general" do
    it("changes the remark count") do
      expect {
        delete :destroy, {:id => remark}
      }.to change(Remark, :count).by(-1)
    end
  end

  describe "success" do

    before do
      delete :destroy, {:id => remark}
    end

    it "redirects to the index page on success" do
      response.should redirect_to remarks_path
    end

    it "sets the flash message" do
      flash[:notice].should include "successfully deleted"
    end

  end

  describe "failure" do

    it "raises an exception" do
      expect {
        delete :destroy, {:id => '121222222'}
      }.to raise_error ActiveRecord::RecordNotFound
    end

  end

end
end
