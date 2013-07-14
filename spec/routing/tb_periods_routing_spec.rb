require "spec_helper"

describe TbPeriodsController do
  describe "routing" do

    it "routes to #index" do
      get("/tb_periods").should route_to("tb_periods#index")
    end

    it "routes to #new" do
      get("/tb_periods/new").should route_to("tb_periods#new")
    end

    it "routes to #show" do
      get("/tb_periods/1").should route_to("tb_periods#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tb_periods/1/edit").should route_to("tb_periods#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tb_periods").should route_to("tb_periods#create")
    end

    it "routes to #update" do
      put("/tb_periods/1").should route_to("tb_periods#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tb_periods/1").should route_to("tb_periods#destroy", :id => "1")
    end

  end
end
