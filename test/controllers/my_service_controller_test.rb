require 'test_helper'

class MyServiceControllerTest < ActionController::TestCase
  test "should get my_api" do
    get :my_api
    assert_response :success
  end

end
