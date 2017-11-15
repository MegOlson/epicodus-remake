require 'rails_helper'

describe "the add chapter process" do
  it "adds a new chapter" do
    visit chapters_path
    click_link 'New Chapter'
    fill_in 'Name', :with => 'Ruby'
    click_on 'Create Chapter'
    expect(page).to have_content 'Ruby'
  end

  it "gives error when no name is entered" do
    visit new_chapter_path
    click_on 'Create Chapter'
    expect(page).to have_content 'errors'
  end
end
