require 'test_helper'

class UserCreationTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test "a user can be created" do
    visit new_user_path

    fill_in "Username", with: "user"
    fill_in "Password", with: "password"
    click_button "Create Account"

    assert page.has_content?("Welcome, User")
  end
end
