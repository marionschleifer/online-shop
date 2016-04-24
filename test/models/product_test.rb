 require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  setup do
    @cart = Cart.new(delivery_address: "Ring Street", email: "secret.email@gmail.com", session_id: "123", paid: true)
    @product = Product.new(title: "Ruby Book", description: "My Ruby book", image_url: "book.jpg", price: 19.90)
  end

  test "the product needs title" do
    @product.title = nil
    assert_not = @product.valid?
  end

  test "the product needs description" do
    @product.description = nil
    assert_not = @product.valid?
  end

  test "the product needs image_url" do
    @product.image_url = nil
    assert_not = @product.valid?
  end

  test "the product needs price" do
    @product.price = nil
    assert_not = @product.valid?
  end

  test "title must be unique" do
    product = Product.new(title: "Ruby Book", description: "My Ruby book", image_url: "book.jpg", price: 19.90)
    assert product.save
    other_product = Product.new(title: "Ruby Book", description: "My Ruby book", image_url: "book.jpg", price: 19.90)
    assert_not other_product.valid?
    other_product.title = "My Ruby Book"
    assert other_product.valid?
  end
end
