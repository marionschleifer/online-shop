class Product < ActiveRecord::Base
  validates :title, :description, :image_url, :price, presence: true
  validates :title, uniqueness: true
end
