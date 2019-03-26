require 'rails_helper'

RSpec.describe "BrewBatches", type: :request do
  describe "GET /brew_batches" do
    it "works! (now write some real specs)" do
      get admin_brew_batches_path
      expect(response).to have_http_status(200)
    end
  end
end
