require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "the sign-in page" do
    get '/users'
    assert_response :success
  end
end
