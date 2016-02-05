require 'test_helper'

class MypageControllerTest < ActionController::TestCase
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

  test "should get messages" do
    get :messages
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get mail" do
    get :mail
    assert_response :success
  end

  test "should get wallet" do
    get :wallet
    assert_response :success
  end

end
