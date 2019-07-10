require "rails_helper"

RSpec.describe ReviewLunchesController, type: :routing do
  describe "routing" do

    it "routes to #new" do
      expect(:get => "/lunches/1/review_lunches/new").to route_to("review_lunches#new", :lunch_id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lunches/1/review_lunches/1/edit").to route_to("review_lunches#edit",:lunch_id => "1", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/lunches/1/review_lunches").to route_to("review_lunches#create",:lunch_id => "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lunches/1/review_lunches/1").to route_to("review_lunches#update",:lunch_id => "1", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lunches/1/review_lunches/1").to route_to("review_lunches#update",:lunch_id => "1", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lunches/1/review_lunches/1").to route_to("review_lunches#destroy",:lunch_id => "1", :id => "1")
    end
  end
end
