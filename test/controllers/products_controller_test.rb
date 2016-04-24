require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  test "should get index" do
    get :index
    assert_response :success
  end

  # test "should create product" do
  #   assert_difference('Product.count') do
  #     post :create, product: {title: 'Ruby on Rails', description: "My Ruby Book", image_url: "book.jpg", price: 4.90}
  #   end
  #   assert_redirected_to products_path(assigns(:product))
  # end
end
