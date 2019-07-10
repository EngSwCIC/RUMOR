require "rails_helper"

RSpec.describe ReviewDinnersController, type: :routing do
  describe "routing" do

    it "routes to #new" do
      expect(:get => "/dinners/1/review_dinners/new").to route_to("review_dinners#new",:dinner_id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dinners/1/review_dinners/1/edit").to route_to("review_dinners#edit",:dinner_id => "1", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dinners/1/review_dinners").to route_to("review_dinners#create",:dinner_id => "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dinners/1/review_dinners/1").to route_to("review_dinners#update",:dinner_id => "1", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dinners/1/review_dinners/1").to route_to("review_dinners#update",:dinner_id => "1", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dinners/1/review_dinners/1").to route_to("review_dinners#destroy",:dinner_id => "1", :id => "1")
    end
  end
end
