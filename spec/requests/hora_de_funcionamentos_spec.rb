require 'rails_helper'

RSpec.describe "HoraDeFuncionamentos", type: :request do
  describe "GET /hora_de_funcionamentos" do
    it "works! (now write some real specs)" do
      get hora_de_funcionamentos_path
      expect(response).to have_http_status(200)
    end
  end
end
