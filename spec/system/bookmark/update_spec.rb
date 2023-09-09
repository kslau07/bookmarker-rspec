# To run: rspec path/filename -or- rspec only/path

require 'rails_helper'

RSpec.describe 'update bookmark', type: :system do
  # This will create a 'bookmark' method, before each scenario is run
  # The method is equal to a Bookmark object
  let!(:bookmark) { Bookmark.create(url: 'https://coolsite.com', title: 'Cool Site') } 

  scenario 'empty title and url' do
    visit bookmarks_path
    
    # Remember that click_link & fill_in are Capybara methods
    click_link 'Show this bookmark'
    click_link 'Edit this bookmark'

    fill_in 'Title', with: ''
    fill_in 'Url', with: ''

    click_button 'Update Bookmark'

    # The page should show error message 'Title can't be blank'
    expect(page).to have_content("Title can't be blank")

    # The bookmark title should be unchanged, when object is reloaded from db
    expect(bookmark.reload.title).to eq('Cool Site')
  end

  scenario 'valid title and url' do
    visit bookmarks_path

    click_link 'Show this bookmark'
    click_link "Edit this bookmark"
    fill_in 'Title', with: 'Neo Vim'
    fill_in 'Url', with: 'https://neovim.io'

    click_button 'Update Bookmark'

    # The page should show success message
    expect(page).to have_content("Bookmark was successfully updated")

    # The bookmark and title should be updated
    expect(bookmark.reload.title).to eq('Neo Vim')
  end
end
