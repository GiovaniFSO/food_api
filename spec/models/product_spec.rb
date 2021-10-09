require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should belong_to(:product_category) }
  it { should have_many(:order_products).dependent(false) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:price) }
end
