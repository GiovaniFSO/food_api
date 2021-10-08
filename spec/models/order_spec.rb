require 'rails_helper'

RSpec.describe Order, type: :model do
  it { should belong_to(:restaurant) }
  it { should have_many(:order_products) }
  it { should validate_presence_of(:name).with_message("can't be blank") }
  it { should validate_presence_of(:phone_number).with_message("can't be blank") }
  it { should validate_presence_of(:total_value).with_message("can't be blank") }
  it { should validate_presence_of(:city).with_message("can't be blank") }
  it { should validate_presence_of(:neighborhood).with_message("can't be blank") }
  it { should validate_presence_of(:street).with_message("can't be blank") }
  it { should validate_presence_of(:number).with_message("can't be blank") }
  it { should define_enum_for(:status).with(%i[waiting delivered])}
end
