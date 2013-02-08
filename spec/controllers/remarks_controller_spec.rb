require 'spec_helper'

describe RemarksController do
  describe "#create" do
    describe "success" do

      before do
        post :create, {:remark => {:title => "Remark", :connotation_id => 1}}
      end

      it "redirects to index page" do
        response.should redirect_to remarks_path
      end

      it "sets the flash message" do
        flash[:notice].should eq "Remark was successfully created"
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

  describe "#delete" do

    let!(:remark) { create :remark }

    it("changes the remark count") do
      expect {
        delete :destroy, {:id => remark}
      }.to change(Remark, :count).by(-1)
    end

    describe "success" do

      before do
        delete :destroy, {:id => remark}
      end

      it "redirects to the index page on success" do
        response.should redirect_to remarks_path
      end

      it "sets the flash message" do
        flash[:notice].should eq "Remark was successfully deleted"
      end

    end


    describe "failure" do

      before do
        delete :destroy, {:id => '121222222'}
      end

      it "returns an error message" do
        flash[:alert].should eq "Remark not found"
      end

      it "redirects to remarks path" do
        response.should redirect_to remarks_path
      end

    end

  end
end
