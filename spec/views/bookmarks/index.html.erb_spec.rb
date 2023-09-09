require 'rails_helper'

RSpec.describe "bookmarks/index", type: :view do
  before(:each) do
    assign(:bookmarks, [
      Bookmark.create!(
        title: "Title",
        url: "Url"
      ),
      Bookmark.create!(
        title: "Title",
        url: "Url"
      )
    ])
  end

  it "renders a list of bookmarks" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Url".to_s), count: 2
  end
end
