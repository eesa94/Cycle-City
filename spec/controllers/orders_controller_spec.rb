require 'rails_helper'

describe OrdersController, type: :controller do

  let(:product) { FactoryBot.create(:product) }
  let(:user) { FactoryBot.create(:user) }
  let(:admin) { FactoryBot.create(:admin) }
  let(:order) { FactoryBot.create(:order) }


  # Index tests
  describe 'GET #index' do
    before do
      sign_in user
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end


  # Show tests
  # describe 'GET #show' do
  #   before do
  #     sign_in user
  #     FactoryBot.create(:product)
  #     FactoryBot.create(:order)
  #   end
  #
  #   it 'renders the show template' do
  #     get :show, params: { id: order }
  #     expect(response).to render_template('show')
  #   end
  # end

  # describe 'GET #show' do
  #   before do
  #     FactoryBot.create(:user)
  #     FactoryBot.create(:product)
  #     FactoryBot.create(:order)
  #   end
  #   context 'when admin is signed in' do
  #     before do
  #       sign_in admin
  #     end
  #     it 'can view other users orders' do
  #       get :show, params: { id: order }
  #       expect(response).to be_ok
  #     end
  #   end
  #
  #   context 'when user is signed in' do
  #     before do
  #       @user = FactoryBot.create(:user, id: 2)
  #       sign_in user
  #       @admin_order = FactoryBot.create(:order, user_id: 1, id: 1)
  #       @user_order = FactoryBot.create(:order, user_id: 2, id: 2)
  #     end
  #     it 'cannot view all users orders' do
  #       get :show, params: { id: @admin_order.order_id }
  #       expect(response).not_to be_ok
  #
  #     end
  #   end
  # end


end
