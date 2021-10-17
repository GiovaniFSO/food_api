require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  describe 'GET /index' do
    it 'returns all categories' do
      italian_food = create(:category, title: 'Italian')
      italian_food.image.attach(io: File.open(Rails.root.join('spec/fixtures/files/italian.jpeg')),
                                filename: 'italian.jpeg', content_type: 'image/jpeg')
      mexican_food = create(:category, title: 'Mexican')
      mexican_food.image.attach(io: File.open(Rails.root.join('spec/fixtures/files/mexican.jpg')),
                                filename: 'mexican.jpeg', content_type: 'image/jpg')

      get '/api/v1/categories'

      expect(response).to have_http_status(:success)
      expect(parsed_body).to include(include('title' => 'Italian'))
      expect(parsed_body).to include(include('title' => 'Mexican'))
    end

    it 'returns no restaurants' do
      get '/api/v1/categories'

      expect(response).to have_http_status(200)
      expect(response.content_type).to include('application/json')
      expect(parsed_body).to be_empty
    end
  end
end
