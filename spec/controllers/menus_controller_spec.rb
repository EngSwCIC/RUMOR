require 'rails_helper'


RSpec.describe MenusController, type: :controller do
  login_user
  
  let(:valid_attributes) {
    {date: "2018-01-01"}
  }

  let(:invalid_attributes) {
    {date: nil}
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Menu.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      menu = Menu.create! valid_attributes
      get :show, params: {id: menu.to_param}, session: valid_session
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
      menu = Menu.create! valid_attributes
      get :edit, params: {id: menu.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Menu" do
        expect {
          post :create, params: {menu: valid_attributes}, session: valid_session
        }.to change(Menu, :count).by(1)
      end

      it "imports a new menu" do
       
        post :create, params: {
          "menu"=>{"file"=>Rack::Test::UploadedFile.new(Rails.root.join("spec/fixtures/files/menu.xlsx"))},
          "route_to"=>{"create_sheet"=>""}
        }, session: valid_session
        expect(response).to have_http_status(302)
      end

      it "redirects to the created menu" do
        post :create, params: {menu: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Menu.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {menu: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {date: "2018-06-14"}
      }

      it "updates the requested menu" do
        menu = Menu.create! valid_attributes
        put :update, params: {id: menu.to_param, menu: new_attributes}, session: valid_session
        menu.reload
        expect(menu).to be_valid
      end

      it "redirects to the menu" do
        menu = Menu.create! valid_attributes
        put :update, params: {id: menu.to_param, menu: valid_attributes}, session: valid_session
        expect(response).to redirect_to(menu)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        menu = Menu.create! valid_attributes
        put :update, params: {id: menu.to_param, menu: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested menu" do
      menu = Menu.create! valid_attributes
      expect {
        delete :destroy, params: {id: menu.to_param}, session: valid_session
      }.to change(Menu, :count).by(-1)
    end

    it "redirects to the menus list" do
      menu = Menu.create! valid_attributes
      delete :destroy, params: {id: menu.to_param}, session: valid_session
      expect(response).to redirect_to(menus_url)
    end
  end

  describe "#import" do
    it "create a new import menu" do
      get :import, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

end
