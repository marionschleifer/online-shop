require 'test_helper'

class CartsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show,
    assert_response :success
  end

  test "should get add_product" do
    get :add_product,
    assert_response :success
  end

  test "should get remove_product" do
    get :remove_product,
    assert_response :success
  end

  test "should get checkout" do
    get :checkout
    assert_response :success
  end

end
