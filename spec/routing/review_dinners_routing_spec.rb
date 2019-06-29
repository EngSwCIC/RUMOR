require "rails_helper"

RSpec.describe ReviewDinnersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/review_dinners").to route_to("review_dinners#index")
    end

    it "routes to #new" do
      expect(:get => "/review_dinners/new").to route_to("review_dinners#new")
    end

    it "routes to #show" do
      expect(:get => "/review_dinners/1").to route_to("review_dinners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/review_dinners/1/edit").to route_to("review_dinners#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/review_dinners").to route_to("review_dinners#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/review_dinners/1").to route_to("review_dinners#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/review_dinners/1").to route_to("review_dinners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/review_dinners/1").to route_to("review_dinners#destroy", :id => "1")
    end
  end
end
