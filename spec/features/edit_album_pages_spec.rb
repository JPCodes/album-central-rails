require 'rails_helper'

describe "the edit an album path" do
  it "edits a album" do
    album = Album.create(name: 'Self-titled', price: 25.5 , artist: 'Bob', release_date: '2017-01-01', image: 'default')
    visit album_path(album)
    click_on 'Edit'
    fill_in 'Name', :with => 'Untitled'
    click_on 'Update Album'
    expect(page).to have_content 'Untitled'
  end

  it "gives error when no name is entered" do
    album = Album.create(name: 'Success', price: 20.5 , artist: 'Guy', release_date: '2017-02-01', image: 'default')
    visit album_path(album)
    click_on 'Edit'
    fill_in 'Name', :with => ''
    click_button 'Update Album'
    expect(page).to have_content 'errors'
  end

  describe 'the delete mixtape path' do
    it 'will delete a mixtape' do
      album = Album.create(name: 'Self-titled', price: 20.5 , artist: 'Guy', release_date: '2017-02-01', image: 'default')
      visit album_path(album)
      click_on 'Delete'
      expect(page).to_not have_content('Self-titled')
    end
  end
end
