require 'test_helper'

class MyRegistrationsControllerTest < ActionController::TestCase
  setup do
    @my_registration = my_registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_registration" do
    assert_difference('MyRegistration.count') do
      post :create, my_registration: { category: @my_registration.category, cell: @my_registration.cell, email: @my_registration.email, gender: @my_registration.gender, name: @my_registration.name, subject: @my_registration.subject }
    end

    assert_redirected_to my_registration_path(assigns(:my_registration))
  end

  test "should show my_registration" do
    get :show, id: @my_registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_registration
    assert_response :success
  end

  test "should update my_registration" do
    patch :update, id: @my_registration, my_registration: { category: @my_registration.category, cell: @my_registration.cell, email: @my_registration.email, gender: @my_registration.gender, name: @my_registration.name, subject: @my_registration.subject }
    assert_redirected_to my_registration_path(assigns(:my_registration))
  end

  test "should destroy my_registration" do
    assert_difference('MyRegistration.count', -1) do
      delete :destroy, id: @my_registration
    end

    assert_redirected_to my_registrations_path
  end
end
