require 'test_helper'

class CartsControllerTest < ActionController::TestCase
  setup do
    @product = Product.create!(title: "My Nice Ruby Book", description: "My Ruby Book", image_url: "ruby.jpg", price: 12.90)
    @cart = Cart.new(delivery_address: "Kreuzwiesen 19", email: "marion.schleifer@gmail.com")
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get add_product" do
    post :add_product, id: @cart.id, product_id: @product.id
    assert_response :redirect
  end

  # test "should get remove_product" do
  #   get :remove_product
  #   assert_response :redirect
  # end
end
