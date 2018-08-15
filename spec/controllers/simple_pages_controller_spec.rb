require 'rails_helper'

describe SimplePagesController, type: :controller do

  # Index
  context 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end

  # About
  context 'GET #about' do
    it 'renders the about template' do
      get :about
      expect(response).to be_ok
      expect(response).to render_template('about')
    end
  end

  # Contact
  context 'GET #contact' do
    it 'renders the contact form template' do
      get :contact
      expect(response).to be_ok
      expect(response).to render_template('contact')
    end
  end

end
