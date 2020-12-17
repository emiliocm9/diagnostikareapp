require 'rails_helper'

RSpec.describe 'Requests', type: :request do
  describe 'GET /sign_up' do
    it 'returns http success' do
      get 'http://localhost:3000/users/sign_up'
      expect(response).to have_http_status(200)
    end
  end
  describe 'GET /sign_in' do
    it 'returns http success' do
      get 'http://localhost:3000/users/sign_in'
      expect(response).to have_http_status(200)
    end
  end
end
