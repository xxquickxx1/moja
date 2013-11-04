require "spec_helper"

describe WebsitesController do
  describe "routing" do

    it "routes to #index" do
      get("/websites").should route_to("websites#index")
    end

    it "routes to #new" do
      get("/websites/new").should route_to("websites#new")
    end

    it "routes to #show" do
      get("/websites/1").should route_to("websites#show", :id => "1")
    end

    it "routes to #edit" do
      get("/websites/1/edit").should route_to("websites#edit", :id => "1")
    end

    it "routes to #create" do
      post("/websites").should route_to("websites#create")
    end

    it "routes to #update" do
      put("/websites/1").should route_to("websites#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/websites/1").should route_to("websites#destroy", :id => "1")
    end

  end
end
