require 'rails_helper'

RSpec.describe Book, type: :model do
  it "is valid with a title" do
    book = Book.new(title: "The Great Gatsby")
    expect(book).to be_valid
  end

  it "is invalid without a title (rainy day)" do
    book = Book.new(title: nil)
    expect(book).not_to be_valid
    expect(book.errors[:title]).to include("can't be blank")
  end

  it "is valid with an author" do
    book = Book.new(title: "The Great Gatsby", author: "F. Scott Fitzgerald")
    expect(book).to be_valid
  end

  it "is valid with a price" do
    book = Book.new(title: "The Great Gatsby", price: 9.99)
    expect(book).to be_valid
  end

  it "is valid with a published_date" do
    book = Book.new(title: "The Great Gatsby", published_date: Date.new(1925, 4, 10))
    expect(book).to be_valid
  end
end
