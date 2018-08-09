require 'rails_helper'

describe Comment do

  let(:product) { Product.create!(name: "race bike") }
  let(:user) { User.create!(email: "firstname@lastname.com", password: "password") }

  it "is not valid without a body" do
    expect(Comment.new(user: user, product: product, rating: 4)).not_to be_valid
  end

  it "is not valid without a user" do
    expect(Comment.new(body: "test comment", product: product, rating: 4)).not_to be_valid
  end

  it "is not valid without a product" do
    expect(Comment.new(user: user, body: "test comment", rating: 4)).not_to be_valid
  end

  it "is not valid without a rating" do
    expect(Comment.new(user: user, body: "test comment", product: product)).not_to be_valid
  end

end
