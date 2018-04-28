require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference "User.count" do
      post signup_path, params: { user: {name: "", email: "user@invalid", password: "foobar", password_confirmation: "bar" } }
    end
    assert_template "users/new"
    assert_select "div.alert", "The form contains 3 errors."
    assert_select 'form[action="/signup"]'
  end
end
