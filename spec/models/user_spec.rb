require 'rails_helper'

  describe User do

  before do
    @user = User.create(email: "test-user@gmail.com", encrypted_password: "123456")
  end

  it "is not valid" do
    expect(User.new(email: "test-user", encrypted_password: "123456")).not_to be_valid
  end


end