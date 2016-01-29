require 'test_helper'

class HelpsControllerTest < ActionController::TestCase

  def setup
    @base_title = "Vin-Vin Funding"
  end

  test "should get aboutvvf" do
    get :aboutvvf
    assert_response :success
    assert_select "title", "About Vin-Vin Funding. | #{@base_title}"
  end

  test "should get how_to_create" do
    get :how_to_create
    assert_response :success
    assert_select "title", "How To Create. | #{@base_title}"
  end

  test "should get how_to_support" do
    get :how_to_support
    assert_response :success
    assert_select "title", "How To Support. | #{@base_title}"
  end

  test "should get aboutpayment" do
    get :aboutpayment
    assert_response :success
    assert_select "title", "About payment. | #{@base_title}"
  end

  test "should get faqs" do
    get :faqs
    assert_response :success
    assert_select "title", "FAQs | #{@base_title}"
  end

end
