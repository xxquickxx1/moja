require "spec_helper"

describe SalesController do
  describe "routing" do

    it "routes to #index" do
      get("/sales").should route_to("sales#index")
    end

    it "routes to #new" do
      get("/sales/new").should route_to("sales#new")
    end

    it "routes to #show" do
      get("/sales/1").should route_to("sales#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sales/1/edit").should route_to("sales#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sales").should route_to("sales#create")
    end

    it "routes to #update" do
      put("/sales/1").should route_to("sales#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sales/1").should route_to("sales#destroy", :id => "1")
    end

  end
end
