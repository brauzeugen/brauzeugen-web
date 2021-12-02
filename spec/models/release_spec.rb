require "rails_helper"

RSpec.describe Release, type: :model do
  describe "factory" do
    it "works" do
      create(:release)
    end
  end

  it { is_expected.to have_many(:entitlements) }
end
