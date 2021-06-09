require "test_helper"

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:eli)
  end

  test "a user can create an account" do
    user = User.create(
      username: "sample_username",
      email: "sample@email.com",
      password: "123456"
    )

    assert user.save, "Created a user"
  end
  
  test "check the presence of email if nil" do
    user = User.create(
      email: nil,
      password: "123456"
    )

    assert_not user.save, "Saved user without email"
  end

  test "check the presence of password if nil" do
    user = User.create(
      email: "sample@email.com",
      password: nil
    )

    assert_not user.save, "Saved user without password"
  end

  test "email must be unique" do
    user = User.create(
      email: "eli@email.com",
      password: "123456"
    )

    assert_not user.save, "Saved user with duplicate email"
  end
end
