require 'rails_helper'

describe CommentsController, type: :controller do

  let(:comment) { FactoryBot.create(:comment) }
  let(:product) { FactoryBot.create(:product) }
  let(:user) { FactoryBot.create(:user) }
  let(:admin) { FactoryBot.create(:admin) }


  # Create tests
  describe 'POST #create' do
    before do
      sign_in user
    end

    context 'comment contains valid information' do
      it 'user creates a new comment successfully' do
        @product = FactoryBot.create(:product)
        @comment = FactoryBot.create(:comment)
        expect {@comment = FactoryBot.create(:comment)}.to change(Comment, :count).by(1)
      end
    end
  end


  # Destroy tests
  describe 'DELETE #destroy' do
    before do
      @user = FactoryBot.create(:user)
      @product = FactoryBot.create(:product)
      @comment = FactoryBot.create(:comment)
      sign_in admin
    end

    it 'successfully deletes comment' do
      expect{ delete :destroy, params: { id: @comment, product_id: @product } }.to change{@product.comments.count}.by(-1)
      expect(response).to redirect_to(@product)
    end
  end


end
