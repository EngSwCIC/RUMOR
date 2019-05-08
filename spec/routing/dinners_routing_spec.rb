require "rails_helper"

RSpec.describe DinnersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/dinners").to route_to("dinners#index")
    end

    it "routes to #new" do
      expect(:get => "/dinners/new").to route_to("dinners#new")
    end

    it "routes to #show" do
      expect(:get => "/dinners/1").to route_to("dinners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dinners/1/edit").to route_to("dinners#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dinners").to route_to("dinners#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dinners/1").to route_to("dinners#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dinners/1").to route_to("dinners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dinners/1").to route_to("dinners#destroy", :id => "1")
    end
  end
end
