require 'rails_helper'

RSpec.describe "user_books/show", type: :view do
  before(:each) do
    user = User.create!(username: "Alice")
    book = Book.create!(title: "Ruby Basics")

    assign(:user_book, UserBook.create!(user: user, book: book))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Alice/)
    expect(rendered).to match(/Ruby Basics/)
  end
end
