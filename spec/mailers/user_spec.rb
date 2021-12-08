require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "#release_email" do
    subject { UserMailer.with(entitlement: entitlement).release_email }

    let(:entitlement) { Entitlement.first }

    before do
      create(:user, voices: [build(:voice)])
      create(:release)
    end

    it { is_expected.to have_attributes(to: [User.first.email]) }

    describe 'templating' do
      before do
        Release.last.update(email_template: template)
      end

      context 'when template contains "%"' do
        let(:template) do
          "A %{user_voices_count} and 5% is what I need"
        end

        it { is_anticipated.not_to raise_error }
      end

      context 'when template contains "%" at the end' do
        let(:template) do
          "At the end: 5%"
        end

        xit { is_anticipated.not_to raise_error }
      end

      context 'when template contains invalid key' do
        let(:template) do
          "A %{blub} and 5%"
        end

        xit { is_anticipated.not_to raise_error }
      end

    end
  end
end
