class Product < ApplicationRecord
  belongs_to :product_category

  has_many :order_products, dependent: nil

  validates :name, :price, presence: true

  has_one_attached :image
end
