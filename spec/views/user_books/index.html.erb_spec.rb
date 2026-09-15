require 'rails_helper'

RSpec.describe "user_books/index", type: :view do
  before(:each) do
    user = User.create!(username: "Alice")
    book = Book.create!(title: "Ruby Basics")

    assign(:user_books, [
      UserBook.create!(user: user, book: book),
      UserBook.create!(user: user, book: book)
    ])
  end

  it "renders a list of user_books" do
    render
    cell_selector = 'td'
    assert_select cell_selector, text: "Alice", count: 2
    assert_select cell_selector, text: "Ruby Basics", count: 2
  end
end
