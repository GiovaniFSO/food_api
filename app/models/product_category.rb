class ProductCategory < ApplicationRecord
  belongs_to :restaurant
  has_many :products, dependent: nil

  validates :title, presence: true
end
