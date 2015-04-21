require 'test_helper'

class MyCookyControllerTest < ActionController::TestCase
  test "should get set_cookie" do
    get :set_cookie
    assert_response :success
  end

  test "should get show_cookie" do
    get :show_cookie
    assert_response :success
  end

  test "should get delete_cookie" do
    get :delete_cookie
    assert_response :success
  end

end
