require 'spec_helper'
describe "Creating a Remark" do
  context "creating a remark" do
    it "succeeds" do
      visit "/remarks/new"
      fill_in "Remark", :with => "This worked well"
      select('Negative', :from => 'Connotation')
      click_button "Save"
      page.should have_content "successfully created"
    end
    it "reuturns an error message on failure" do
      visit "/remarks/new"
      fill_in "Remark", :with => ""
      select('Negative', :from => 'Connotation')
      click_button "Save"
      page.should have_content "Title can't be blank"
    end
  end
  describe "deleting a remark" do
    it "succeeds" do
      visit "/remarks"
      click_link "Add a remark"
      fill_in "Remark", :with => "This worked well"
      select('Negative', :from => 'Connotation')
      click_button "Save"
      click_link "Delete"
      page.should have_content "successfully deleted"
    end
  end
end
