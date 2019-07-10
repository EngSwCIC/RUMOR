require "rails_helper"

RSpec.describe HoraDeFuncionamentosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/hora_de_funcionamentos").to route_to("hora_de_funcionamentos#index")
    end

    it "routes to #new" do
      expect(:get => "/hora_de_funcionamentos/new").to route_to("hora_de_funcionamentos#new")
    end

    it "routes to #show" do
      expect(:get => "/hora_de_funcionamentos/1").to route_to("hora_de_funcionamentos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hora_de_funcionamentos/1/edit").to route_to("hora_de_funcionamentos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/hora_de_funcionamentos").to route_to("hora_de_funcionamentos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/hora_de_funcionamentos/1").to route_to("hora_de_funcionamentos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/hora_de_funcionamentos/1").to route_to("hora_de_funcionamentos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hora_de_funcionamentos/1").to route_to("hora_de_funcionamentos#destroy", :id => "1")
    end
  end
end
