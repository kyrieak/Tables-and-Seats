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
end
