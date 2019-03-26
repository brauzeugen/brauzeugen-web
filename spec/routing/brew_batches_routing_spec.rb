require "rails_helper"

RSpec.describe BrewBatchesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/brew_batches").to route_to("brew_batches#index")
    end

    it "routes to #new" do
      expect(:get => "/brew_batches/new").to route_to("brew_batches#new")
    end

    it "routes to #show" do
      expect(:get => "/brew_batches/1").to route_to("brew_batches#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/brew_batches/1/edit").to route_to("brew_batches#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/brew_batches").to route_to("brew_batches#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/brew_batches/1").to route_to("brew_batches#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/brew_batches/1").to route_to("brew_batches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/brew_batches/1").to route_to("brew_batches#destroy", :id => "1")
    end
  end
end
