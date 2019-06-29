require 'rails_helper'

RSpec.describe "ReviewLunches", type: :request do
  describe "GET /review_lunches" do
    it "works! (now write some real specs)" do
      get review_lunches_path
      expect(response).to have_http_status(200)
    end
  end
end
