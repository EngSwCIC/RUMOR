require 'rails_helper'

RSpec.describe "ReviewDinners", type: :request do
  describe "GET /review_dinners" do
    it "works! (now write some real specs)" do
      get review_dinners_path
      expect(response).to have_http_status(200)
    end
  end
end
