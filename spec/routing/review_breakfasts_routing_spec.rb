require "rails_helper"

RSpec.describe ReviewBreakfastsController, type: :routing do
  describe "routing" do

    it "routes to #new" do
      expect(:get => "/breakfasts/1/review_breakfasts/new").to route_to("review_breakfasts#new", :breakfast_id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/breakfasts/1/review_breakfasts/1/edit").to route_to("review_breakfasts#edit",:breakfast_id => "1", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/breakfasts/1/review_breakfasts").to route_to("review_breakfasts#create",:breakfast_id => "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "/breakfasts/1/review_breakfasts/1").to route_to("review_breakfasts#update",:breakfast_id => "1", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/breakfasts/1/review_breakfasts/1").to route_to("review_breakfasts#update",:breakfast_id => "1", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/breakfasts/1/review_breakfasts/1").to route_to("review_breakfasts#destroy",:breakfast_id => "1", :id => "1")
    end
  end
end
