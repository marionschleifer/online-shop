class CartsController < ApplicationController
  before_action :set_cart

  def show
  end

  def add_product
    @product = Product.find(params[:product_id])
    @cart.products << @product
    redirect_to carts_show_path
  end

  def remove_product
    @cart.cart_products.where(product_id: params[:product_id]).destroy_all
    redirect_to carts_show_path
  end

  def checkout
  end

  def set_cart
    @cart = Cart.find_or_create_by(session_id: session.id)
  end
end
