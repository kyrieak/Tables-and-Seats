require 'spec_helper'

describe RemarksController do
  describe "#create" do
    it "redirects to index page on success" do
     post :create, {:remark => { :title => "Remark", :connotation_id => 1}}
     response.should redirect_to remarks_path
    end
  end
end
