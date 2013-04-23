require 'spec_helper'

describe RemarksController do
  let(:connotation) {Connotation.first}
  let(:retro) { create :retro }
  # This should return the minimal set of attributes required to create a valid
  # Remark. As you add validations to Remark, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { :connotation_id => connotation.id,
      :retro_id => retro.id,
      :content => "I like it"}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RemarksController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  let(:default_params){ { :format => :json } }

  describe "GET index" do
    it "assigns all remarks as @remarks" do
      remark = Remark.create! valid_attributes
      get :index, {}, valid_session
      assigns(:remarks).should eq([remark])
    end
  end

  describe "GET show" do
    it "assigns the requested remark as @remark" do
      remark = Remark.create! valid_attributes
      get :show, {:id => remark.to_param}, valid_session
      assigns(:remark).should eq(remark)
    end
  end

  describe "GET new" do
    it "assigns a new remark as @remark" do
      get :new, {}, valid_session
      assigns(:remark).should be_a_new(Remark)
    end
  end

  describe "GET edit" do
    it "assigns the requested remark as @remark" do
      remark = Remark.create! valid_attributes
      get :edit, {:id => remark.to_param}, valid_session
      assigns(:remark).should eq(remark)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Remark" do
        expect {
          post :create, {:remark => valid_attributes}, valid_session
        }.to change(Remark, :count).by(1)
      end

      it "assigns a newly created remark as @remark" do
        post :create, {:remark => valid_attributes}, valid_session
        assigns(:remark).should be_a(Remark)
        assigns(:remark).should be_persisted
      end

      it "returns :created" do
        post :create, {:remark => valid_attributes}, valid_session
        response.response_code.should eq 201
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved remark as @remark" do
        # Trigger the behavior that occurs when invalid params are submitted
        Remark.any_instance.stub(:save).and_return(false)
        post :create, {:remark => {  }}, valid_session
        assigns(:remark).should be_a_new(Remark)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Remark.any_instance.stub(:save).and_return(false)
        post :create, {:remark => {  }}, valid_session
        response.response_code.should eq 422
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested remark" do
        remark = Remark.create! valid_attributes
        # Assuming there are no other remarks in the database, this
        # specifies that the Remark created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Remark.any_instance.should_receive(:update_attributes).with({
          "these" => "params" })
        put :update, {:id => remark.to_param, :remark => {
          "these" => "params" }}, valid_session
      end

      it "assigns the requested remark as @remark" do
        remark = Remark.create! valid_attributes
        put :update, {:id => remark.to_param,
                      :remark => valid_attributes}, valid_session
        assigns(:remark).should eq(remark)
      end

      it "returns :created" do
        remark = Remark.create! valid_attributes
        put :update, {:id => remark.to_param,
                      :remark => valid_attributes}, valid_session
        response.response_code.should eq 204
      end
    end

    describe "with invalid params" do
      it "assigns the remark as @remark" do
        remark = Remark.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Remark.any_instance.stub(:save).and_return(false)
        put :update, {:id => remark.to_param, :remark => {  }}, valid_session
        assigns(:remark).should eq(remark)
      end

      it "returns :unprocessable_entity" do
        remark = Remark.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Remark.any_instance.stub(:save).and_return(false)
        put :update, {:id => remark.to_param, :remark => {  }}, valid_session
        response.response_code.should eq 422
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested remark" do
      remark = Remark.create! valid_attributes
      expect {
        delete :destroy, {:id => remark.to_param}, valid_session
      }.to change(Remark, :count).by(-1)
    end

    it "returns :no_content" do
      remark = Remark.create! valid_attributes
      delete :destroy, {:id => remark.to_param}, valid_session
      response.response_code.should eq 204
    end
  end

end
