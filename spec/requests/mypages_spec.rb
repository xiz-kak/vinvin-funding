require 'rails_helper'

RSpec.describe 'Mypages', type: :request do
  describe 'GET /mypage' do
    it 'returns status 200' do
      get '/mypage/index'
      expect(response).to have_http_status(200)
    end
  end
end
