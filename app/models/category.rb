class Category < ApplicationRecord
  has_many :restaurants, dependent: nil

  validates :title, presence: true
end
