class Category < ApplicationRecord
  has_many :restaurants, dependent: nil

  validates :title, presence: true

  has_one_attached :image
end
