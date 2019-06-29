require 'rails_helper'

RSpec.describe "ReviewBreakfasts", type: :request do
  describe "GET /review_breakfasts" do
    it "works! (now write some real specs)" do
      get review_breakfasts_path
      expect(response).to have_http_status(200)
    end
  end
end
