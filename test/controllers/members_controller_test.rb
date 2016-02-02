require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get favorite" do
    get :favorite
    assert_response :success
  end

  test "should get supported" do
    get :supported
    assert_response :success
  end

  test "should get posted" do
    get :posted
    assert_response :success
  end

end
