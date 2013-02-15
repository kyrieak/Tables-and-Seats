require "spec_helper"
feature "Retro Features" do

  scenario "adding a new retro" do
    visit retros_path
    page.should_not have_content "New Retro"
    click_link "Add a retro"
    fill_in "Retro Name", :with => "New Retro"
    fill_in "State", :with => "Open"
    click_button "Submit"
    page.should have_content "successfully created"
    page.should have_content "New Retro"
  end

  scenario "adding a new retro without a name fails" do
    visit retros_path
    click_link "Add a retro"
    fill_in "Retro Name", :with => ""
    fill_in "State", :with => "Open"
    click_button "Submit"
    page.should_not have_content "successfully created"
    page.should_not have_content "Unnamed Retro"
    page.should have_content "Name can't be blank"
  end

  scenario "editing an existing retro" do
    FactoryGirl.create(:retro, :name => "New Retro")
    visit retros_path
    page.should have_content "New Retro"
    page.should_not have_content "Modified Retro"
    click_link "Edit"
    fill_in "Retro Name", :with => "Modified Retro"
    fill_in "State", :with => "Open"
    click_button "Update"
    page.should have_content "Modified Retro"
    page.should have_content "successfully updated"
  end

  xscenario "editing fails" do
    FactoryGirl.create(:retro, :name => "New Retro")
    visit retros_path
    page.should have_content "New Retro"
    click_link "Edit"
    fill_in "Retro Name", :with => ""
    click_button "Update"
    page.should have_content "Retro update unsuccessful"
  end

  scenario "deleting a retro that has no remarks yet" do
    FactoryGirl.create(:retro, :name => "Retro To Delete")
    visit retros_path
    page.first(".retro_delete").click
    page.should have_content "successfully deleted"
  end

  scenario "showing a retro" do
    retro = FactoryGirl.create(:retro_with_remarks, :name => "My Retro")
    visit retros_path
    retro.name.should_not be_nil
    page.should have_content retro.name
    click_link retro.name
    page.should have_content retro.name
    page.should have_content retro.remarks.first.title
    page.should have_content retro.remarks.first.explanation
  end

  scenario "deleting a retro that has associated remarks" do
    FactoryGirl.create(:retro_with_remarks, :name => "Retro with Remarks")
    visit retros_path
    page.should have_content "Retro with Remarks"
    click_link "Delete"
    page.should have_content "successfully deleted"
    page.should_not have_content "Retro with Remarks"
  end

  scenario "adding remarks to a retro" do
    retro = FactoryGirl.create(:retro, :name => "New Retro")
    visit retro_path retro
    click_link "Add a remark"

  end
end
