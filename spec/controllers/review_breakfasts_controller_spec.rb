require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe ReviewBreakfastsController, type: :controller do

  before (:each) do
    @user = create(:user)
    sign_in @user
    @menu = FactoryBot.create(:menu)
    @breakfast = Breakfast.create(menu_id: @menu.to_param,
      hot_drinks: "leite",
      vegetarian_drink: "leite de soja",
      chocolate_milk: "chocolate",
      bread: "pão careca",
      vegetarian_bread: "pão sem leite",
      margarine: "manteiga",
      vegetarian_margarine: "margarina vegana",
      complement: "geleia",
      vegetarian_complement: "geleia",
      fruit: "abacaxi")
  end

  let(:valid_attributes) {
    { 
      user_id: @user.to_param ,
      rating: 5,
      comment: "teste",
      breakfast_id: @breakfast.to_param
    }
  }
 let(:valid_attributes_breakfast) {
    { menu_id: @menu.to_param,
      hot_drinks: "leite",
      vegetarian_drink: "leite de soja",
      chocolate_milk: "chocolate",
      bread: "pão careca",
      vegetarian_bread: "pão sem leite",
      margarine: "manteiga",
      vegetarian_margarine: "margarina vegana",
      complement: "geleia",
      vegetarian_complement: "geleia",
      fruit: "abacaxi"
    }
  }

  let(:invalid_attributes) {
    {
      user_id: nil,
      rating: 1,
      comment: "teste",
      breakfast_id: nil
    }
  }

  let(:valid_session) { {} }

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {breakfast_id: @breakfast.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      review_breakfast = ReviewBreakfast.create! valid_attributes
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ReviewBreakfast" do
        expect {
          post :create, params: {breakfast_id: @breakfast.to_param,review_breakfast: valid_attributes}, session: valid_session
        }.to change(ReviewBreakfast, :count).by(1)
      end

      it "redirects to the created review_breakfast" do
        post :create, params: {breakfast_id: @breakfast.to_param,review_breakfast: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Breakfast.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {breakfast_id: @breakfast.to_param,review_breakfast: invalid_attributes}, session: valid_session
        expect(response).to redirect_to(Breakfast.last)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
       {
         user_id: @user.to_param ,
         rating: 1,
         comment: "teste2",
         breakfast_id: @breakfast.to_param
       }
      }

      it "updates the requested review_breakfast" do
        review_breakfast = ReviewBreakfast.create! valid_attributes
        put :update, params: {breakfast_id: @breakfast.to_param,id: review_breakfast.to_param, review_breakfast: new_attributes}, session: valid_session
        review_breakfast.reload
      end

      it "redirects to the breakfast" do
        review_breakfast = ReviewBreakfast.create! valid_attributes
        put :update, params: {breakfast_id: @breakfast.to_param,id: review_breakfast.to_param, review_breakfast: valid_attributes}, session: valid_session
        expect(response).to redirect_to(@breakfast)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        review_breakfast = ReviewBreakfast.create! valid_attributes
        put :update, params: {breakfast_id: @breakfast.to_param,id: review_breakfast.to_param, review_breakfast: invalid_attributes}, session: valid_session
        expect(response).to redirect_to(Breakfast.last)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested review_breakfast" do
      review_breakfast = ReviewBreakfast.create! valid_attributes
      expect {
        delete :destroy, params: {breakfast_id: @breakfast.to_param,id: review_breakfast.to_param}, session: valid_session
      }.to change(ReviewBreakfast, :count).by(-1)
    end

    it "redirects to the review_breakfasts list" do
      review_breakfast = ReviewBreakfast.create! valid_attributes
      delete :destroy, params: {breakfast_id: @breakfast.to_param,id: review_breakfast.to_param}, session: valid_session
      expect(response).to redirect_to(@breakfast)
    end
  end

end