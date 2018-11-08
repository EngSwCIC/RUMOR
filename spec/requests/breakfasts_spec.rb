require 'rails_helper'

RSpec.describe "Breakfasts", type: :request do
  describe "GET /breakfasts" do
    it "works! (now write some real specs)" do
      get breakfasts_path
      expect(response).to have_http_status(200)
    end
  end
end
