# spec/static_spec.rb

require 'rails_helper'

RSpec.describe 'Static content', type: :system do
  it 'shows the static text (this line can be anything)' do
    visit static_index_path
    expect(page).to have_content('Hello world')
    # Above is ruby syntactical sugar for below
    # expect(page).to(have_content('Hello world'))
  end
end

