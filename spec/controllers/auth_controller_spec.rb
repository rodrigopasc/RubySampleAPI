require 'rails_helper'

RSpec.describe AuthController, type: :controller do
  let!(:credential_test) { FactoryBot.create :credential }

  describe 'Errors' do
    it 'Should return bad request when username is not sent' do
      post :create, params: { password: FFaker::Internet.password }
      expect(response).to have_http_status(:bad_request)
    end

    it 'Should return bad request when password is not sent' do
      post :create, params: { username: FFaker::Internet.user_name }
      expect(response).to have_http_status(:bad_request)
    end

    it 'Should return unauthorized when the credential does not match' do
      post :create, params: { username: FFaker::Internet.user_name, password: FFaker::Internet.password }
      expect(response).to have_http_status(:unauthorized)
    end
  end

  describe 'Success' do
    it 'Should return ok when credential exists' do
      post :create, params: { username: 'test', password: 'qwerty' }
      expect(response).to have_http_status(:ok)
    end
  end
end
