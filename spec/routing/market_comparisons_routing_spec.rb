require "spec_helper"

describe MarketComparisonsController do
  describe "routing" do

    it "routes to #index" do
      get("/market_comparisons").should route_to("market_comparisons#index")
    end

    it "routes to #new" do
      get("/market_comparisons/new").should route_to("market_comparisons#new")
    end

    it "routes to #show" do
      get("/market_comparisons/1").should route_to("market_comparisons#show", :id => "1")
    end

    it "routes to #edit" do
      get("/market_comparisons/1/edit").should route_to("market_comparisons#edit", :id => "1")
    end

    it "routes to #create" do
      post("/market_comparisons").should route_to("market_comparisons#create")
    end

    it "routes to #update" do
      put("/market_comparisons/1").should route_to("market_comparisons#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/market_comparisons/1").should route_to("market_comparisons#destroy", :id => "1")
    end

  end
end
