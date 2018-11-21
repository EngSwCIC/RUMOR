require 'rails_helper'


RSpec.describe CustomerSatisfactionsController, type: :controller do

  let(:valid_attributes) {
    { 
      user_group: 2,
      meal: "jantar",
      rating: 5,
      like: "foi bom demais",
      disgust: "prato deveria ser maior",
      suggestion: "pizza",
    }
  }

  let(:invalid_attributes) {
    {
      user_group: nil,
      meal: "lanche da tarde",
      rating: 10,
      like: nil,
      disgust: nil,
      suggestion: nil,
    }
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      user = create(:user)
      sign_in user
      CustomerSatisfaction.create! valid_attributes
      get :index, format: :html ,params: {}, session: valid_session
      expect(response).to be_successful
    end

    it "returns a 302 response for html when not logged" do
      CustomerSatisfaction.create! valid_attributes
      get :index, format: :html ,params: {}, session: valid_session
      expect(response).to have_http_status(302)
    end

    it "returns a 200 response for pdf" do
      user = create(:user)
      sign_in user
      CustomerSatisfaction.create! valid_attributes
      get :index, format: :pdf ,params: {}, session: valid_session
      expect(response).to have_http_status(200)
    end

    it "returns a 401 response for pdf when not logged" do
      CustomerSatisfaction.create! valid_attributes
      get :index, format: :pdf ,params: {}, session: valid_session
      expect(response).to have_http_status(401)
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      customer_satisfaction = CustomerSatisfaction.create! valid_attributes
      get :show, params: {id: customer_satisfaction.to_param}, session: valid_session
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
      customer_satisfaction = CustomerSatisfaction.create! valid_attributes
      get :edit, params: {id: customer_satisfaction.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new CustomerSatisfaction" do
        expect {
          post :create, params: {customer_satisfaction: valid_attributes}, session: valid_session
        }.to change(CustomerSatisfaction, :count).by(1)
      end

      it "redirects to the created customer_satisfaction" do
        post :create, params: {customer_satisfaction: valid_attributes}, session: valid_session
        expect(response).to redirect_to(CustomerSatisfaction.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {customer_satisfaction: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { 
          user_group: 2,
          meal: "jantar",
          rating: 5,
          like: "foi bom demais",
          disgust: "prato deveria ser maior",
          suggestion: "pizza",
        }
      }

      it "updates the requested customer_satisfaction" do
        customer_satisfaction = CustomerSatisfaction.create! valid_attributes
        put :update, params: {id: customer_satisfaction.to_param, customer_satisfaction: new_attributes}, session: valid_session
        customer_satisfaction.reload
        expect(customer_satisfaction).to be_valid
      end

      it "redirects to the customer_satisfaction" do
        customer_satisfaction = CustomerSatisfaction.create! valid_attributes
        put :update, params: {id: customer_satisfaction.to_param, customer_satisfaction: valid_attributes}, session: valid_session
        expect(response).to redirect_to(customer_satisfaction)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        customer_satisfaction = CustomerSatisfaction.create! valid_attributes
        put :update, params: {id: customer_satisfaction.to_param, customer_satisfaction: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested customer_satisfaction" do
      customer_satisfaction = CustomerSatisfaction.create! valid_attributes
      expect {
        delete :destroy, params: {id: customer_satisfaction.to_param}, session: valid_session
      }.to change(CustomerSatisfaction, :count).by(-1)
    end

    it "redirects to the customer_satisfactions list" do
      customer_satisfaction = CustomerSatisfaction.create! valid_attributes
      delete :destroy, params: {id: customer_satisfaction.to_param}, session: valid_session
      expect(response).to redirect_to(customer_satisfactions_url)
    end
  end

  describe "GET #charts" do
    it "returns all line charts successful" do
      user = create(:user)
      sign_in user
      CustomerSatisfaction.create! valid_attributes
      get :charts, format: :html ,params: {}, session: valid_session
      expect(response).to be_successful
    end

    it "returns 302 when access not logged" do 
      CustomerSatisfaction.create! valid_attributes
      get :charts, format: :html ,params: {}, session: valid_session
      expect(response).to have_http_status(302)
    end

  end

end