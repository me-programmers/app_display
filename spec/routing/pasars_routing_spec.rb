require "spec_helper"

describe PasarsController do
  describe "routing" do

    it "routes to #index" do
      get("/pasars").should route_to("pasars#index")
    end

    it "routes to #new" do
      get("/pasars/new").should route_to("pasars#new")
    end

    it "routes to #show" do
      get("/pasars/1").should route_to("pasars#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pasars/1/edit").should route_to("pasars#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pasars").should route_to("pasars#create")
    end

    it "routes to #update" do
      put("/pasars/1").should route_to("pasars#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pasars/1").should route_to("pasars#destroy", :id => "1")
    end

  end
end
