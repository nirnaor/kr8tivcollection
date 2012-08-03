require "spec_helper"

describe JewelsController do
  describe "routing" do

    it "routes to #index" do
      get("/jewels").should route_to("jewels#index")
    end

    it "routes to #new" do
      get("/jewels/new").should route_to("jewels#new")
    end

    it "routes to #show" do
      get("/jewels/1").should route_to("jewels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/jewels/1/edit").should route_to("jewels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/jewels").should route_to("jewels#create")
    end

    it "routes to #update" do
      put("/jewels/1").should route_to("jewels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/jewels/1").should route_to("jewels#destroy", :id => "1")
    end

  end
end
