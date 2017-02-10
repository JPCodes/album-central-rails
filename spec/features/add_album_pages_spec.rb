require 'rails_helper'

describe "the add a album path" do
  it "adds a new album" do
    visit root_path
    click_link 'Add a New Album'
    fill_in 'Name', :with => 'Cool Album Name'
    fill_in 'Image', :with => 'default'
    fill_in 'Price', :with => '20'
    fill_in 'Artist', :with => 'Cool Artist Name'
    page.find('#album_release_date').set("2014-01-01")
    click_on 'Create Album'
    expect(page).to have_content 'Cool Album Name'
  end

  it "gives error when form is filled incorrectly" do
    visit new_album_path
    click_on 'Create Album'
    expect(page).to have_content 'errors'
  end
end
