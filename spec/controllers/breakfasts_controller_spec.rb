require 'rails_helper'

RSpec.describe BreakfastsController, type: :controller do
  login_user
  before (:each) do
    @menu = FactoryBot.create(:menu)
  end

 
  let(:valid_attributes) {
    { menu_id: @menu.to_param,
      hot_drinks: "leite",
      vegetarian_drink: "leite de soja",
      chocolate_milk: "chocolate",
      bread: "pão careca",
      vegetarian_bread: "pão sem leite",
      margarine: "manteiga",
      vegetarian_margarine: "margarina vegana",
      complement: "geleia",
      vegetarian_complement: "geleia"
    }
  }

  let(:invalid_attributes) {
    {
      hot_drinks: nil,
      vegetarian_drink: "leite de soja",
      chocolate_milk: "chocolate",
      bread: "pão careca",
      vegetarian_bread: "pão sem leite",
      margarine: "manteiga",
      vegetarian_margarine: "margarina vegana",
      complement: "geleia",
      vegetarian_complement: "geleia"
    }
  }

 
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Breakfast.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      breakfast = Breakfast.create! valid_attributes
      get :show, params: {id: breakfast.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      breakfast = Breakfast.create! valid_attributes
      get :edit, params: {id: breakfast.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Breakfast" do
        expect {
          post :create, params: {breakfast: valid_attributes}, session: valid_session
        }.to change(Breakfast, :count).by(1)
      end

      it "redirects to the created breakfast" do
        post :create, params: {breakfast: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Breakfast.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {breakfast: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { menu_id: @menu.to_param,
          hot_drinks: "leite",
          vegetarian_drink: "leite de soja",
          chocolate_milk: "chocolate",
          bread: "pão francês",
          vegetarian_bread: "pão vegano",
          margarine: "manteiga",
          vegetarian_margarine: "margarina vegana",
          complement: "geleia",
          vegetarian_complement: "geleia"
        }
      }

      it "updates the requested breakfast" do
        breakfast = Breakfast.create! valid_attributes
        put :update, params: {id: breakfast.to_param, breakfast: new_attributes}, session: valid_session
        breakfast.reload
        expect(breakfast).to be_valid
      end

      it "redirects to the breakfast" do
        breakfast = Breakfast.create! valid_attributes
        put :update, params: {id: breakfast.to_param, breakfast: valid_attributes}, session: valid_session
        expect(response).to redirect_to(breakfast)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        breakfast = Breakfast.create! valid_attributes
        put :update, params: {id: breakfast.to_param, breakfast: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested breakfast" do
      breakfast = Breakfast.create! valid_attributes
      expect {
        delete :destroy, params: {id: breakfast.to_param}, session: valid_session
      }.to change(Breakfast, :count).by(-1)
    end

    it "redirects to the breakfasts list" do
      breakfast = Breakfast.create! valid_attributes
      delete :destroy, params: {id: breakfast.to_param}, session: valid_session
      expect(response).to redirect_to(breakfasts_url)
    end
  end

end
