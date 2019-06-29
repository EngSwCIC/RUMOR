require "rails_helper"

RSpec.describe ReviewLunchesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/review_lunches").to route_to("review_lunches#index")
    end

    it "routes to #new" do
      expect(:get => "/review_lunches/new").to route_to("review_lunches#new")
    end

    it "routes to #show" do
      expect(:get => "/review_lunches/1").to route_to("review_lunches#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/review_lunches/1/edit").to route_to("review_lunches#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/review_lunches").to route_to("review_lunches#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/review_lunches/1").to route_to("review_lunches#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/review_lunches/1").to route_to("review_lunches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/review_lunches/1").to route_to("review_lunches#destroy", :id => "1")
    end
  end
end
