require 'rails_helper'

RSpec.describe ProductCategory, type: :model do
  it { should belong_to(:restaurant) }
  it { should have_many(:products) }
  it { should validate_presence_of(:title).with_message("can't be blank") }
end
