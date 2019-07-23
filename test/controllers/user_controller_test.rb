require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get user_all_url
    assert_response :success
  end

end
