require 'test_helper'

class AppHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_home_index_url
    assert_response :success
  end

end
