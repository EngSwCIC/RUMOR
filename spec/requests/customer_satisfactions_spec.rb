require 'rails_helper'

RSpec.describe "CustomerSatisfactions", type: :request do
  describe "GET /customer_satisfactions" do
    it "works! (now write some real specs)" do
      get customer_satisfactions_path
      expect(response).to have_http_status(200)
    end
  end
end
