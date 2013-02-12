require "spec_helper"
feature "Retro Features" do
  scenario "edding a new retro" do
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
    pending "No edit action yet"
    click_link "Edit"
    fill_in "Retro Name", :with => "Modified Retro"
    fill_in "State", :with => "Open"
    click_button "Submit"
    page.should have_content "successfully created"
    page.should have_content "Modified Retro"
  end
end
