require 'spec_helper'

describe RetrosController do
  # This should return the minimal set of attributes required to create a valid
  # Retro. As you add validations to Retro, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { :name => "Elephant" }
  end

  def valid_session
    {}
  end

  let(:default_params) { {format: :json} }

  describe "GET index" do
    it "assigns all retros as @retros" do
      retro = Retro.create! valid_attributes
      get :index, {}, valid_session
    end
  end

  describe "GET show" do
    it "assigns the requested retro as @retro" do
      retro = Retro.create! valid_attributes
      get :show, {:id => retro.to_param}, valid_session
      assigns(:retro).should eq(retro)
    end
  end

  describe "GET new" do
    it "assigns a new retro as @retro" do
      get :new, {}, valid_session
      assigns(:retro).should be_a_new(Retro)
    end
  end

  describe "GET edit" do
    it "assigns the requested retro as @retro" do
      retro = Retro.create! valid_attributes
      get :edit, {:id => retro.to_param}, valid_session
      assigns(:retro).should eq(retro)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Retro" do
        expect {
          post :create, {:retro => valid_attributes}, valid_session
        }.to change(Retro, :count).by(1)
      end

      it "assigns a newly created retro as @retro" do
        post :create, {:retro => valid_attributes}, valid_session
        assigns(:retro).should be_a(Retro)
        assigns(:retro).should be_persisted
      end

      it "responds with :created" do
        post :create, {:retro => valid_attributes}, valid_session
        response.status.should eq 201
      end
    end
  end

  describe "with invalid params" do
    it "assigns a newly created but unsaved retro as @retro" do
      # Trigger the behavior that occurs when invalid params are submitted
      Retro.any_instance.stub(:save).and_return(false)
      post :create, {:retro => {  }}, valid_session
      assigns(:retro).should be_a_new(Retro)
    end

    it "returns :unprocessable_entity" do
      # Trigger the behavior that occurs when invalid params are submitted
      Retro.any_instance.stub(:save).and_return(false)
      post :create, {:retro => {  }}, valid_session
      response.status.should eq 422
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested retro" do
        retro = Retro.create! valid_attributes
        # Assuming there are no other retros in the database, this
        # specifies that the Retro created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Retro.any_instance.should_receive(:update_attributes).with({
          "these" => "params"
        })
        put :update, { :id => retro.to_param,
                       :retro => { "these" => "params" }}, valid_session
      end

      it "assigns the requested retro as @retro" do
        retro = Retro.create! valid_attributes
        put :update, {:id => retro.to_param,
                      :retro => valid_attributes}, valid_session
        assigns(:retro).should eq(retro)
      end

      it "redirects to the retro" do
        retro = Retro.create! valid_attributes
        put :update, {:id => retro.to_param,
                      :retro => valid_attributes}, valid_session
        response.should redirect_to(retro)
      end
    end

  end
  describe "with invalid params" do
    it "assigns the retro as @retro" do
      retro = Retro.create! valid_attributes
      # Trigger the behavior that occurs when invalid params are submitted
      Retro.any_instance.stub(:save).and_return(false)
      put :update, {:id => retro.to_param, :retro => {  }}, valid_session
      assigns(:retro).should eq(retro)
    end

    it "re-renders the retro" do
      retro = Retro.create! valid_attributes
      # Trigger the behavior that occurs when invalid params are submitted
      Retro.any_instance.stub(:save).and_return(false)
      put :update, {:id => retro.to_param, :retro => {  }}, valid_session
      assigns(:retro)
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested retro" do
      retro = Retro.create! valid_attributes
      expect {
        delete :destroy, {:id => retro.to_param}, valid_session
      }.to change(Retro, :count).by(-1)
    end

    it "returns no content" do
      retro = Retro.create! valid_attributes
      delete :destroy, {:id => retro.to_param}, valid_session
      response.should be_success
    end

    context "when the retro doesn't exist" do
      it "returns not found" do
        delete :destroy, {:id => 'NaN'}, valid_session
        response.response_code.should == 404
      end
    end
  end
end
