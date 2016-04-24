require 'test_helper'

class CartsControllerTest < ActionController::TestCase
  setup do
    @product = Product.create!(title: "My Nice Ruby Book", description: "My Ruby Book", image_url: "ruby.jpg", price: 12.90)
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  # test "should get add_product" do
  #   get :add_product, id: @product.id
  #   assert_response :redirect
  # end

  test "should get remove_product" do
    get :remove_product
    assert_response :redirect
  end

  test "should get checkout" do
    get :checkout
    assert_response :success
  end
end
