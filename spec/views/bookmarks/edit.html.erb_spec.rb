require 'rails_helper'

RSpec.describe "bookmarks/edit", type: :view do
  let(:bookmark) {
    Bookmark.create!(
      title: "MyString",
      url: "MyString"
    )
  }

  before(:each) do
    assign(:bookmark, bookmark)
  end

  it "renders the edit bookmark form" do
    render

    assert_select "form[action=?][method=?]", bookmark_path(bookmark), "post" do

      assert_select "input[name=?]", "bookmark[title]"

      assert_select "input[name=?]", "bookmark[url]"
    end
  end
end
