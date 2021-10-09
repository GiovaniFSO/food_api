require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it { should belong_to(:category) }
  it { should have_many(:product_categories).dependent(:destroy) }
  it { should have_many(:orders).dependent(:destroy) }
  it { should validate_presence_of(:name).with_message("can't be blank") }
  it { should validate_presence_of(:delivery_tax).with_message("can't be blank") }
  it { should validate_presence_of(:city).with_message("can't be blank") }
  it { should validate_presence_of(:neighborhood).with_message("can't be blank") }
  it { should validate_presence_of(:street).with_message("can't be blank") }
  it { should validate_presence_of(:number).with_message("can't be blank") }
end
