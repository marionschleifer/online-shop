class Cart < ActiveRecord::Base
  has_many :products, through: :cart_products
  has_many :cart_products
  validates :session_id, presence: true
  validates :email, format: { with: /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\z/i }, if: Proc.new { |cart| cart.email.present? }
end
