require 'rails_helper'

RSpec.describe "Routes", type: :request do
  describe 'GET /routes' do
    before do
      FactoryBot.create(:route)
      get '/routes'
    end

    it 'returns routes' do
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body).size).to eq(1)
    end

    it 'returns a status code 200' do
      expect(response).to have_http_status(:ok)
    end
  end
end
