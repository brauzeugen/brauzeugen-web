require "rails_helper"

RSpec.describe Admin::BrewBatchesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/admin/brew_batches").to route_to("admin/brew_batches#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/brew_batches/new").to route_to("admin/brew_batches#new")
    end

    it "routes to #edit" do
      expect(:get => "/admin/brew_batches/1/edit").to route_to("admin/brew_batches#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/brew_batches").to route_to("admin/brew_batches#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/brew_batches/1").to route_to("admin/brew_batches#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/brew_batches/1").to route_to("admin/brew_batches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/brew_batches/1").to route_to("admin/brew_batches#destroy", :id => "1")
    end
  end
end
