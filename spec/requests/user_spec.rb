require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users'
      expect(response).to have_http_status(:success)
    end

    it 'renders the correct template' do
      get '/users'
      expect(response).to render_template(:index)
    end

    it 'includes the correct placeholder text' do
      get '/users'
      expect(response.body).to include('Here is a list of users')
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/users/show'
      expect(response).to have_http_status(:success)
    end

    it 'renders the correct template' do
      get '/users/show'
      expect(response).to render_template(:show)
    end

    it 'includes the correct placeholder text' do
      get '/users/show'
      expect(response.body).to include('Here is information about an user')
    end
  end
end
