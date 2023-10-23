# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'create bookmark', type: :system do
  # sad path (blank)
  scenario 'empty title and url' do
    visit new_bookmark_path
    click_button 'Create Bookmark'

    # The page should show error message 'Title can't be blank'
    # 'page' is a special variable from Capybara which contains information of the current displayed page
    expect(page).to have_content("Title can't be blank")

    # No bookmark record is created
    expect(Bookmark.count).to eq(0)
  end

  # happy path scenario block
  scenario 'valid title and url' do
    visit new_bookmark_path
    # fill in text fields with our strings
    fill_in 'Title', with: 'Cool Site'
    fill_in 'Url', with: 'https://coolsite.com'
    click_button 'Create Bookmark'

    # The page should show success message
    expect(page).to have_content("Bookmark was successfully created")

    # We may count number of records if we wish
    # 1 new bookmark record is created
    expect(Bookmark.count).to eq(1)

    # Optionally, we can check record data
    expect(Bookmark.last.title).to eq('Cool Site')
  end
end

<<~HEREDOC
# Difference between let and let!
# https://www.codewithjason.com/difference-let-let-instance-variables-rspec/
require 'rspec'

# Using 'let'
RSpec.describe User do
  let(:user) { User.new }

  it 'does not have an id when first instantiated' do
    expect(user.id).to be nil
  end
end

# Using @user
RSpec.describe User do
  before { @user = User.new }
  
  it 'does not have an id when first instantiated' do
    expect(@user.id).to be nil
  end
end

# Jason Swett goes on to list a few cons against using @instance_variable
# not the least of which is because @instance_variables are not memoised, they
# can "travel" from file to file and be invoked unexpectedly.
HEREDOC
