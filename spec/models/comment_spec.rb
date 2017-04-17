require 'rails_helper'

  describe Comment do

  before do
    @product = Product.create!(name: "race bike")
    @user = User.create(email: "test-user@gmail.com", encrypted_password: "123456", first_name: "Test")
    @comment = Comment.create!(body: "this is a new comment", rating: 3, product: @product, user: @user)
  end

  it "this should be invalid" do
    expect(Comment.new(body: "this is a new comment", rating: 3)).not_to be_valid
  end

end