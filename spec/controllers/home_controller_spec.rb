require 'rails_helper'

RSpec.describe HomeController, type: :controller do

 describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

end
