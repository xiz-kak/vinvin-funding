require 'test_helper'

class RewardsControllerTest < ActionController::TestCase
  test "should get select" do
    get :select
    assert_response :success
  end

  test "should get ship" do
    get :ship
    assert_response :success
  end

  test "should get confirm" do
    get :confirm
    assert_response :success
  end

  test "should get complete" do
    get :complete
    assert_response :success
  end

end
