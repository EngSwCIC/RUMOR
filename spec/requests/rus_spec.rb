# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Rus', type: :request do
  describe 'GET /rus' do
    it 'works! (now write some real specs)' do
      get rus_path
      expect(response).to have_http_status(200)
    end
  end
end
