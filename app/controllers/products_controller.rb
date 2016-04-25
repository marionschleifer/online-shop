class ProductsController < ApplicationController
  before_action :set_cart
  http_basic_authenticate_with name: "Cinderella", password: "1234", only: [ :new, :create, :edit, :update ]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :action => "new"
    end
  end


  private

  def set_cart
    @cart = Cart.find_or_create_by(session_id: session.id)
  end

  def product_params
      params.require(:product).permit(:title, :description, :image_url, :price)
  end
end
