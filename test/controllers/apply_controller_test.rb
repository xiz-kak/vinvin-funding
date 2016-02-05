require 'test_helper'

class ApplyControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get basic" do
    get :basic
    assert_response :success
  end

  test "should get contents" do
    get :contents
    assert_response :success
  end

  test "should get rewards" do
    get :rewards
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get preview" do
    get :preview
    assert_response :success
  end

  test "should get complete" do
    get :complete
    assert_response :success
  end

end
