require "rails_helper"

RSpec.describe BreakfastsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/breakfasts").to route_to("breakfasts#index")
    end

    it "routes to #new" do
      expect(:get => "/breakfasts/new").to route_to("breakfasts#new")
    end

    it "routes to #show" do
      expect(:get => "/breakfasts/1").to route_to("breakfasts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/breakfasts/1/edit").to route_to("breakfasts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/breakfasts").to route_to("breakfasts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/breakfasts/1").to route_to("breakfasts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/breakfasts/1").to route_to("breakfasts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/breakfasts/1").to route_to("breakfasts#destroy", :id => "1")
    end
  end
end
