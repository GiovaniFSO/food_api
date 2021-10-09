FactoryBot.define do
  factory :restaurant do
    name { "Grimaldi's Pizza" }
    description { 'Tasty food Italian' }
    delivery_tax { 1.5 }
    city { 'New York' }
    street { '6th Ave' }
    neighborhood { 'NY 10011' }
    number { '656' }
    complement { 'Lorem ipsum' }
    category
  end
end
