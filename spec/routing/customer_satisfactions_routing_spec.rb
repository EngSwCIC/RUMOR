require "rails_helper"

RSpec.describe CustomerSatisfactionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/customer_satisfactions").to route_to("customer_satisfactions#index")
    end

    it "routes to #new" do
      expect(:get => "/customer_satisfactions/new").to route_to("customer_satisfactions#new")
    end

    it "routes to #show" do
      expect(:get => "/customer_satisfactions/1").to route_to("customer_satisfactions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/customer_satisfactions/1/edit").to route_to("customer_satisfactions#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/customer_satisfactions").to route_to("customer_satisfactions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/customer_satisfactions/1").to route_to("customer_satisfactions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/customer_satisfactions/1").to route_to("customer_satisfactions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/customer_satisfactions/1").to route_to("customer_satisfactions#destroy", :id => "1")
    end
  end
end
