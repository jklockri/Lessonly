require 'rails_helper'

RSpec.describe CompaniesController, type: :controller do
  context 'index' do
    it 'should return index page' do
      get :index
      expect(response.success?)
    end
  end

  context 'alphabetically' do
    it 'should return alphabetically page' do
      get :alphabetically
      expect(response.success?)
    end
  end

  context 'created_last_month' do
    it 'should return created_last_month page' do
      get :created_last_month
      expect(response.success?)
    end
  end

  context 'not_trialing' do
    it 'should return not_trialing page' do
      get :not_trialing
      expect(response.success?)
    end
  end

  context 'with_modern_plan' do
    it 'should return with_modern_plan page' do
      get :with_modern_plan
      expect(response.success?)
    end
  end

end
