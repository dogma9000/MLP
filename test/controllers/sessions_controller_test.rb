require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get login_or_create" do
    get :login_or_create
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

end
