require 'test_helper'

class CartTest < ActiveSupport::TestCase

  setup do
    @cart = Cart.new(delivery_address: "Kreuzwiesen 19", email: "marion.schleifer@gmail.com", session_id: "123", paid: true)
    @product = Product.new(title: "Ruby Book", description: "Book", image_url: "book.jpg", price: 10.20)
  end

  test "validates email" do
    assert @cart.valid?
  end

  test "email contains @" do
    @cart.email = "Marion Schleifer"
    assert_not @cart.valid?
  end

  test "cart contains session_id" do
    @cart.session_id = nil
    assert_not @cart.valid?
  end

  test "can add product" do
    @cart.products << @product
    assert @cart.products.include?(@product)
  end
end
