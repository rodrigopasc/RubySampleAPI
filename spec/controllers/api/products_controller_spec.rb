require 'rails_helper'

RSpec.describe Api::ProductsController, type: :controller do
  let!(:credential_test) { FactoryBot.create :credential }
  let!(:product_test) { FactoryBot.create :product }

  describe 'Index' do
    it 'Should return ok' do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'Create' do
    describe 'Errors' do
      it 'Should return bad request if name is not sent' do
        post :create, params: { description: FFaker::Lorem.sentence }
        expect(response).to have_http_status(:bad_request)
      end
    end

    describe 'Success' do
      it 'Should return ok if name is sent' do
        post :create, params: { name: FFaker::Product.product_name }

        expect(response).to have_http_status(:created)
      end
    end
  end

  describe 'Show' do
    describe 'Errors' do
      it 'Should return not found if it is not a valid product' do
        get :show, params: { id: FFaker::PhoneNumber.area_code }
        
        expect(response).to have_http_status(:not_found)
      end
    end

    describe 'Success' do
      it 'Should return ok if it is not a valid product' do
        get :show, params: { id: product_test&.id }
        
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'Update' do
    describe 'Errors' do
      it 'Should return bad request if name is not sent' do
        patch :update, params: { id: FFaker::PhoneNumber.area_code }
        
        expect(response).to have_http_status(:bad_request)
      end

      it 'Should return not found if name is sent but it is not a valid product' do
        patch :update, params: { id: FFaker::PhoneNumber.area_code, name: FFaker::Product.product_name }
        
        expect(response).to have_http_status(:not_found)
      end
    end

    describe 'Success' do
      it 'Should return ok if it is a valid product' do
        patch :update, params: { id: product_test&.id, name: FFaker::Product.product_name }
        
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'Destroy' do
    describe 'Errors' do
      it 'Should return not found if it is not a valid product' do
        delete :destroy, params: { id: FFaker::PhoneNumber.area_code }
        
        expect(response).to have_http_status(:not_found)
      end
    end

    describe 'Success' do
      it 'Should return no content if it is a valid product' do
        delete :destroy, params: { id: product_test&.id }
        
        expect(response).to have_http_status(:no_content)
      end
    end
  end
end
