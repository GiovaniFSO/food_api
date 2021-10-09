require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should have_many(:restaurants) }
  it { should validate_presence_of(:title).with_message("can't be blank") }
end
