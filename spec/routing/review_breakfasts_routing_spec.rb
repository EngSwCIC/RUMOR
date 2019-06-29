require "rails_helper"

RSpec.describe ReviewBreakfastsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/review_breakfasts").to route_to("review_breakfasts#index")
    end

    it "routes to #new" do
      expect(:get => "/review_breakfasts/new").to route_to("review_breakfasts#new")
    end

    it "routes to #show" do
      expect(:get => "/review_breakfasts/1").to route_to("review_breakfasts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/review_breakfasts/1/edit").to route_to("review_breakfasts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/review_breakfasts").to route_to("review_breakfasts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/review_breakfasts/1").to route_to("review_breakfasts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/review_breakfasts/1").to route_to("review_breakfasts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/review_breakfasts/1").to route_to("review_breakfasts#destroy", :id => "1")
    end
  end
end
