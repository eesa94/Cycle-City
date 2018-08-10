require 'rails_helper'

describe ProductsController, type: :controller do

  let(:product) { FactoryBot.create(:product) }
  let(:user) { FactoryBot.create(:user) }
  let(:admin) { FactoryBot.create(:admin) }


  # Index tests
  describe 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end


  # Show tests
  describe 'GET #show' do
    it 'renders the show template' do
      get :show, params: { id: product.id }
      expect(response).to be_ok
      expect(assigns(:product)).to eq product
      expect(response).to render_template('show')
    end
  end


  # New tests
  describe 'GET #new' do
    context 'when admin = true' do
      before do
        sign_in admin
      end
      it 'renders the new template for authenticated admin' do
        get :new
        expect(response).to be_ok
        expect(response).to render_template('new')
      end
    end

    context 'when admin = false and user = true' do
      before do
        sign_in user
      end
      it 'does not render new template for signed-in user who is not an admin' do
        get :new
        expect(response).not_to be_ok
        expect(response).not_to render_template('new')
      end
    end

    context 'when admin = false and user = false' do
      it 'does not render new template for guest user' do
        get :new
        expect(response).not_to be_ok
        expect(response).not_to render_template('new')
      end
    end
  end


  # Edit tests
  describe 'GET #edit' do
    context 'when admin = true' do
      before do
        sign_in admin
      end
      it 'renders the edit template for authenticated admin' do
        get :edit, params: { id: product }
        expect(response).to be_ok
        expect(assigns(:product)).to eq product
        expect(response).to render_template('edit')
      end
    end

    context 'when admin = false and user = true' do
      before do
        sign_in user
      end
      it 'does not render edit template for signed-in user who is not an admin' do
        get :edit, params: { id: product }
        expect(response).not_to be_ok
        expect(response).not_to render_template('edit')
      end
    end

    context 'admin = false and user = false' do
      it 'does not render edit template for guest user' do
        get :edit, params: { id: product }
        expect(response).not_to be_ok
        expect(response).not_to render_template('edit')
      end
    end
  end


  # Create tests
  describe 'POST #create' do
    context 'new product form has valid information' do
      before do
        sign_in admin
        @product = FactoryBot.create(:product)
      end
      it 'creates the product successfully' do
        expect(response).to be_ok
        expect {@product = FactoryBot.create(:product)}.to change(Product, :count).by(1)
      end
    end
  end

end
