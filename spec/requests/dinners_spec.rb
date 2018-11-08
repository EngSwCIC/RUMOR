require 'rails_helper'

RSpec.describe "Dinners", type: :request do
  describe "GET /dinners" do
    it "works! (now write some real specs)" do
      get dinners_path
      expect(response).to have_http_status(200)
    end
  end
end
