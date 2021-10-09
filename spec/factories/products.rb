FactoryBot.define do
  factory :product do
    name { 'Margherita Pizza' }
    description { 'Traditional Pizza with Extra Famous Sauce and Fresh Basil.' }
    price { 16.0 }
    product_category
  end
end
