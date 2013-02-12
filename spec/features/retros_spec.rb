require "spec_helper"
feature "Retro" do
  scenario "Adding a retro" do
    visit retros_path
    click_link "Add a retro"
    fill_in "Retro Name", :with => "New Retro"
    fill_in "State", :with => "Open"
    click_button "Submit"
    page.should have_content "successfully created"
  end
end
