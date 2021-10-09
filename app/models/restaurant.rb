class Restaurant < ApplicationRecord
  belongs_to :category

  has_many :product_categories, dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :name, :delivery_tax, :city, :neighborhood, :street, :number, presence: true
end
