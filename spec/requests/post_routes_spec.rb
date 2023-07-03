require 'rails_helper'

RSpec.describe "Routes", type: :request do
  describe 'POST /routes' do
    context 'when the request is valid' do
      before do
        post '/routes', params: { route: { name: 'Route 1' } }
      end

      it 'creates a route' do
        expect(JSON.parse(response.body)['name']).to eq('Route 1')
      end

      it 'returns a status code 201' do
        expect(response).to have_http_status(:created)
      end
    end
  end
end