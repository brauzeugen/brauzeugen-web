require "rails_helper"

RSpec.describe Voice, type: :model do
  it { is_expected.to belong_to(:brew_batch) }

  describe ".claimed" do
    subject { Voice.claimed }

    before do
      create(:voice)
      create(:voice, :claimed)
    end

    it { is_expected.to contain_exactly(an_object_having_attributes(user_id: User.last.id)) }
  end

  describe ".unclaimed" do
    subject { Voice.unclaimed }

    before do
      create(:voice)
      create(:voice, :claimed)
    end

    it { is_expected.to contain_exactly(an_object_having_attributes(user_id: nil)) }
  end
end
