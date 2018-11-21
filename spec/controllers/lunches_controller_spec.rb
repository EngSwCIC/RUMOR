require 'rails_helper'

RSpec.describe LunchesController, type: :controller do
  login_user
  before (:each) do
    @menu = FactoryBot.create(:menu)
  end
  # This should return the minimal set of attributes required to create a valid
  # Lunch. As you add validations to Lunch, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { menu_id: @menu.to_param,
      salad: "alface e pepino",
      sauce: "molho oriental",
      garnish: "mandioca",
      main_course: "carne de sol",
      vegetarian_dish: "silveirinha de soja",
      accompaniments: "arroz e feijao",
      dessert: "banana",
      juice: "manga",
    }
  }

  let(:invalid_attributes) {
    { menu_id: nil,
      salad: "alface e pepino",
      sauce: "molho oriental",
      garnish: "mandioca",
      main_course: nil,
      vegetarian_dish: "silveirinha de soja",
      accompaniments: "arroz e feijao",
      dessert: "banana",
      juice: "manga",
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LunchesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Lunch.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      lunch = Lunch.create! valid_attributes
      get :show, params: {id: lunch.to_param}, session: valid_session
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
      lunch = Lunch.create! valid_attributes
      get :edit, params: {id: lunch.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Lunch" do
        expect {
          post :create, params: {lunch: valid_attributes}, session: valid_session
        }.to change(Lunch, :count).by(1)
      end

      it "redirects to the created lunch" do
        post :create, params: {lunch: valid_attributes}, session: valid_session
        expect(response).to redirect_to(@menu)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {lunch: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { menu_id: @menu.to_param,
          salad: "alface e tomate",
          sauce: "molho de salsa",
          garnish: "mandioca",
          main_course: "carne de sol",
          vegetarian_dish: "silveirinha de soja",
          accompaniments: "arroz e feijao",
          dessert: "banana",
          juice: "limao",
        }
      }

      it "updates the requested lunch" do
        lunch = Lunch.create! valid_attributes
        put :update, params: {id: lunch.to_param, lunch: new_attributes}, session: valid_session
        lunch.reload
        expect(lunch).to be_valid
      end

      it "redirects to the lunch" do
        lunch = Lunch.create! valid_attributes
        put :update, params: {id: lunch.to_param, lunch: valid_attributes}, session: valid_session
        expect(response).to redirect_to(@menu)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        lunch = Lunch.create! valid_attributes
        put :update, params: {id: lunch.to_param, lunch: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested lunch" do
      lunch = Lunch.create! valid_attributes
      expect {
        delete :destroy, params: {id: lunch.to_param}, session: valid_session
      }.to change(Lunch, :count).by(-1)
    end

    it "redirects to the lunches list" do
      lunch = Lunch.create! valid_attributes
      delete :destroy, params: {id: lunch.to_param}, session: valid_session
      expect(response).to redirect_to(lunches_url)
    end
  end

end
