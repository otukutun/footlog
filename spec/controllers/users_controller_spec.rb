require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #my' do
    it 'returns http success' do
      get :my
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
