require 'spec_helper'
describe "Creating a Remark" do
  context "web" do
    it "allows the user to create a remark" do
      visit "/remarks/new"
      select('Positive', :from => 'connotation')
    end
  end
end
