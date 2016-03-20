require "rails_helper"

RSpec.describe GoalsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/users/1/goals").to route_to("goals#index", :user_id => "1")
    end

    it "routes to #new" do
      expect(:get => "/users/1/goals/new").to route_to("goals#new", :user_id => "1")
    end

    it "routes to #show" do
      expect(:get => "/users/1/goals/1").to route_to("goals#show", :id => "1", :user_id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/users/1/goals/1/edit").to route_to("goals#edit", :id => "1", :user_id => "1")
    end

    it "routes to #create" do
      expect(:post => "/users/1/goals").to route_to("goals#create", :user_id => "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "/users/1/goals/1").to route_to("goals#update", :id => "1", :user_id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/users/1/goals/1").to route_to("goals#update", :id => "1", :user_id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/users/1/goals/1").to route_to("goals#destroy", :id => "1", :user_id => "1")
    end

  end
end
