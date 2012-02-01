require "spec_helper"

describe RegistrationsController do

  describe "routing" do

    #@controller = "users"

=begin
 All of the xit'ed specs should be negative specs, so they don't
 route anywhere (?).
=end
    xit "routes to #index" do
      get("/registrations").should_not route_to("registrations#index")
    end

    xit "routes to #new" do
      get("/users/new").should route_to("users#new")
    end

    xit "routes to #show" do
      get("/users/1").should route_to("users#show", :id => "1")
    end

    xit "routes to #edit" do
      get("/users/1/edit").should route_to("users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/users").should route_to("registrations#create")
    end

    xit "routes to #update" do
      put("/users/1").should route_to("users#update", :id => "1")
    end

    xit "routes to #destroy" do
      delete("/users/1").should route_to("users#destroy", :id => "1")
    end

  end
end
