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
      page.first("a.remark_delete").click
      page.should have_content "successfully deleted"
    end
  end

  describe "listing remarks" do
    it "shows empty lists correctly" do
      visit "/remarks"
      page.should have_content "There are no remarks"
    end

    it "shows non-empty lists correctly" do
      visit "/remarks"
      click_link "Add a remark"
      fill_in "Remark", :with => "Comedy"
      select('Negative', :from => 'Connotation')
      click_button "Save"

      click_link "Add a remark"
      fill_in "Remark", :with => "Drama"
      select('Neutral', :from => 'Connotation')
      click_button "Save"

      click_link "Add a remark"
      fill_in "Remark", :with => "Dramedy"
      select('Positive', :from => 'Connotation')
      click_button "Save"

      page.should_not have_content "There are no remarks"
      page.should have_content "Drama"
      page.should have_content "Comedy"
      page.should have_content "Dramedy"

      page.should have_content "successfully deleted"
    end
  end
end
