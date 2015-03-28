require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  test "should get student" do
    get :student
    assert_response :success
  end

  test "should get faculty" do
    get :faculty
    assert_response :success
  end

end
