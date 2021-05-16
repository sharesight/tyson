require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "redirected to log-in" do
    get '/'
    assert_redirected_to users_path
  end

  test "front-page for logged-in users" do
    login_as :anyone

    get '/'
    assert_response :success
    assert_match /Hello, Anyone/, response.body
  end

end
