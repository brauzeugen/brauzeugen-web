require "rails_helper"

RSpec.describe BrewBatch, type: :model do
  describe "factory" do
    it "works" do
      create(:brew_batch)
    end
  end
end
