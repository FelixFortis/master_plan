require "rails_helper"

RSpec.describe ActionStepsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/projects/1/action_steps").to route_to("action_steps#index", :project_id => "1")
    end

    it "routes to #new" do
      expect(:get => "/projects/1/action_steps/new").to route_to("action_steps#new", :project_id => "1")
    end

    it "routes to #show" do
      expect(:get => "/projects/1/action_steps/1").to route_to("action_steps#show", :id => "1", :project_id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/projects/1/action_steps/1/edit").to route_to("action_steps#edit", :id => "1", :project_id => "1")
    end

    it "routes to #create" do
      expect(:post => "/projects/1/action_steps").to route_to("action_steps#create", :project_id => "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "/projects/1/action_steps/1").to route_to("action_steps#update", :id => "1", :project_id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/projects/1/action_steps/1").to route_to("action_steps#update", :id => "1", :project_id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/projects/1/action_steps/1").to route_to("action_steps#destroy", :id => "1", :project_id => "1")
    end

  end
end
