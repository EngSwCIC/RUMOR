require 'rails_helper'


RSpec.describe DinnersController, type: :controller do
  login_user
  before (:each) do
    @menu = FactoryBot.create(:menu)
  end
  # This should return the minimal set of attributes required to create a valid
  # Dinner. As you add validations to Dinner, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { menu_id: @menu.to_param,
      salad: "alface e pepino",
      sauce: "molho oriental",
      soup: "feijao com massinha",
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
      soup: nil,
      main_course: "carne de sol",
      vegetarian_dish: "silveirinha de soja",
      accompaniments: "arroz e feijao",
      dessert: "banana",
      juice: "manga",
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DinnersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Dinner.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      dinner = Dinner.create! valid_attributes
      get :show, params: {id: dinner.to_param}, session: valid_session
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
      dinner = Dinner.create! valid_attributes
      get :edit, params: {id: dinner.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Dinner" do
        expect {
          post :create, params: {dinner: valid_attributes}, session: valid_session
        }.to change(Dinner, :count).by(1)
      end

      it "redirects to the created dinner" do
        post :create, params: {dinner: valid_attributes}, session: valid_session
        expect(response).to redirect_to(@menu)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {dinner: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { menu_id: @menu.to_param,
          salad: "repolho e beterraba",
          sauce: "vinagrete",
          soup: "feijao com massinha",
          main_course: "carne de sol",
          vegetarian_dish: "silveirinha de soja",
          accompaniments: "arroz e feijao",
          dessert: "banana",
          juice: "manga",
        }
      }

      it "updates the requested dinner" do
        dinner = Dinner.create! valid_attributes
        put :update, params: {id: dinner.to_param, dinner: new_attributes}, session: valid_session
        dinner.reload
        expect(dinner).to be_valid
      end

      it "redirects to the dinner" do
        dinner = Dinner.create! valid_attributes
        put :update, params: {id: dinner.to_param, dinner: valid_attributes}, session: valid_session
        expect(response).to redirect_to(@menu)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        dinner = Dinner.create! valid_attributes
        put :update, params: {id: dinner.to_param, dinner: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested dinner" do
      dinner = Dinner.create! valid_attributes
      expect {
        delete :destroy, params: {id: dinner.to_param}, session: valid_session
      }.to change(Dinner, :count).by(-1)
    end

    it "redirects to the dinners list" do
      dinner = Dinner.create! valid_attributes
      delete :destroy, params: {id: dinner.to_param}, session: valid_session
      expect(response).to redirect_to(dinners_url)
    end
  end

end
