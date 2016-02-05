require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get notifications" do
    get :notifications
    assert_response :success
  end

  test "should get messages" do
    get :messages
    assert_response :success
  end

  test "should get reports" do
    get :reports
    assert_response :success
  end

  test "should get comments" do
    get :comments
    assert_response :success
  end

  test "should get rewards" do
    get :rewards
    assert_response :success
  end

  test "should get admin" do
    get :admin
    assert_response :success
  end

end
