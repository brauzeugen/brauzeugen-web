require "rails_helper"

RSpec.describe Entitlement, type: :model do
  describe "factory" do
    it "works" do
      create(:entitlement)
    end
  end
end
