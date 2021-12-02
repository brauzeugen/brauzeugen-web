require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "#release_email" do
    subject { UserMailer.with(entitlement: Entitlement.first).release_email }

    before do
      create(:user, voices: [build(:voice)])
      create(:release)
    end

    it { is_expected.to have_attributes(to: [User.first.email]) }
  end
end
