class Product < ActiveRecord::Base
  has_many :carts, through: :cart_products
  has_many :cart_products
  validates :title, :description, :image_url, :price, presence: true
  validates :title, uniqueness: true
end
