require 'spec_helper'
describe "Remarks" do
  before do
    def retro
      @retro ||= FactoryGirl.create :retro
    end
    def remark
      @remark ||= create :remark, :retro_id => retro.id
    end
  end
  describe "creating a remark" do
    it "succeeds" do
      visit "/retros/#{retro.id}/remarks/new"
      fill_in "Remark", :with => "This worked well"
      fill_in "Explanation", :with => "Because we all worked as a team"
      select('Negative', :from => 'Connotation')
      click_button "Save"
      page.should have_content "successfully created"
    end
    it "returns an error message on failure" do
      visit "/retros/#{retro.id}/remarks/new"
      fill_in "Remark", :with => ""
      select('Negative', :from => 'Connotation')
      click_button "Save"
      page.should have_content "Title can't be blank"
    end
  end

  describe "showing a remark" do
    it "succeeds" do
      visit "/retros/#{retro.id}/remarks/new"
      fill_in "Remark", :with => "Spectacular"
      fill_in "Explanation", :with => "Splendiferous"
      select('Neutral', :from => 'Connotation')
      click_button "Save"
      page.should have_content "successfully created"
      click_link "Show"
      page.should have_content "Remark Detail"
      page.should have_content "Spectacular"
      page.should have_content "Splendiferous"
      page.should have_content "Neutral"
      page.should have_content "Back"
    end
  end

  describe "editing a remark" do
    it "succeeds" do
      visit "/retros/#{retro.id}/remarks/#{remark.id}"
      click_link "Edit"
      fill_in "Remark", :with => "Moo!"
      fill_in "Explanation", :with => "Hamburger"
      click_button "Update"
      page.should have_content "Remark was successfully updated"
      page.should have_content "Moo!"

    end
  end

  describe "deleting a remark" do
    it "succeeds" do
      visit "/retros/#{retro.id}/remarks"
      click_link "Add a remark"
      fill_in "Remark", :with => "This worked well"
      select('Negative', :from => 'Connotation')
      click_button "Save"
      page.first("a.remark_delete").click
      page.should have_content "successfully deleted"
    end
  end

  describe "listing remarks" do
    let!(:retro){ create(:retro) }

    it "shows empty lists correctly" do
      visit "/retros/#{retro.id}/remarks"
      page.should have_content "There are no remarks"
    end

    it "shows non-empty lists correctly" do
      visit "/retros/#{retro.id}/remarks"
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
    end
  end
end
