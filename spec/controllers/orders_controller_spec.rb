require 'rails_helper'

describe OrdersController, type: :controller do

  let(:product) { FactoryBot.create(:product) }
  let(:user) { FactoryBot.create(:user) }
  let(:admin) { FactoryBot.create(:admin) }
  let(:order) { FactoryBot.create(:order) }


  # Index tests
  describe 'GET #index' do
    before do
      @user = FactoryBot.create(:user)
      sign_in @user
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end


  # Show tests
  describe 'GET #show' do
    before do
      sign_in user
      @product = FactoryBot.create(:product)
      @order = FactoryBot.create(:order)
    end

    it 'renders the show template' do
      get :show, params: { id: order }
      expect(response).to render_template('show')
    end
  end

end
