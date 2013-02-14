require 'spec_helper'

describe RemarksController do
  let!(:retro) { create :retro }
  let!(:remark) { create :remark, :retro_id => retro.id }

  describe "#create" do
    describe "success" do

      before do
        post :create, {:retro_id => retro.id, :remark => {:title => "Remark", :connotation_id => 1, :retro_id => retro.id }}
      end

      it "redirects to the retro show page" do
        response.should redirect_to retro_path(Remark.last.retro_id)
      end

      it "sets the flash message" do
        flash[:notice].should include "successfully created"
      end
    end

    describe "failure" do
      before do
        post :create, {:retro_id => retro.id, :remark => {:title => nil, :retro_id => retro.id}}
      end

      it "re-renders the new page" do
        response.should render_template :new
      end

    end
  end

  describe "#update" do

    describe "success" do

      before do
        put :update, {:retro_id => retro.id,  :id => remark.id, :remark => {:title => "Remark", :explanation => "Why I said this", :connotation_id => 2}}
      end

      it "redirects to the index page on success" do
        response.should redirect_to retro_path(retro)
      end

      it "sets the flash message" do
        flash[:notice].should include "successfully updated"
      end

    end

    describe "failure" do

      before do
        put :update, {:retro_id => retro.id, :id => remark.id, :remark => {:title => nil}}
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
        create :retro_with_remarks
      end

      it "renders the #show view" do
        get :show, :retro_id => retro.id, id: remark.id
        response.status.should eq 200
      end
    end

    describe "failure" do

      it "raises an exception" do
        expect {
          get :show, :retro_id => retro.id, id: "AnInvalidID"
        }.to raise_error ActiveRecord::RecordNotFound
      end
    end

  end

describe "#delete" do

  before do
    request.env["HTTP_REFERER"] = retro_remarks_path(retro)
  end
  describe "in general" do
    it("changes the remark count") do
      expect {
        delete :destroy, {:retro_id => retro.id, :id => remark}
      }.to change(Remark, :count).by(-1)
    end
  end

  describe "success" do

    before do
      delete :destroy, {:retro_id => retro.id, :id => remark}
    end

    it "redirects to the index page on success" do
      response.should redirect_to retro_remarks_path
    end

    it "sets the flash message" do
      flash[:notice].should include "successfully deleted"
    end

  end

  describe "failure" do

    it "raises an exception" do
      expect {
        delete :destroy, {:retro_id => retro.id, :id => '121222222'}
      }.to raise_error ActiveRecord::RecordNotFound
    end

  end

end
end
