FactoryBot.define do
  factory :order do
    name { 'RandomOrder' }
    phone_number { '1(111)111-1111' }
    total_value { 25.0 }
    city { 'New York' }
    street { '5th Ave' }
    neighborhood { 'Manhattan' }
    number { '827' }
    complement { 'Near Central Park Zoo' }
    status { 0 }
    restaurant
  end
end
