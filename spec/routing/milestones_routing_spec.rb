require "rails_helper"

RSpec.describe MilestonesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/projects/1/milestones").to route_to("milestones#index", :project_id => "1")
    end

    it "routes to #new" do
      expect(:get => "/projects/1/milestones/new").to route_to("milestones#new", :project_id => "1")
    end

    it "routes to #show" do
      expect(:get => "/projects/1/milestones/1").to route_to("milestones#show", :id => "1", :project_id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/projects/1/milestones/1/edit").to route_to("milestones#edit", :id => "1", :project_id => "1")
    end

    it "routes to #create" do
      expect(:post => "/projects/1/milestones").to route_to("milestones#create", :project_id => "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "/projects/1/milestones/1").to route_to("milestones#update", :id => "1", :project_id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/projects/1/milestones/1").to route_to("milestones#update", :id => "1", :project_id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/projects/1/milestones/1").to route_to("milestones#destroy", :id => "1", :project_id => "1")
    end

  end
end
