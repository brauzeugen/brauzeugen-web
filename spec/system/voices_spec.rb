require "rails_helper"

RSpec.describe "Managing voices", type: :system do
  let(:unclaimed_voice) { create(:voice) }
  let(:claimed_voice) { create(:voice, :claimed) }

  it "can show a claimed voice" do
    visit voice_path(claimed_voice)

    expect(page).to have_text("")
  end

  it "can claim an unclaimed voice" do
    visit voice_path(unclaimed_voice)

    expect(page).to have_text("Trage dieses Cryptotoken auf deinen Namen ein")
    fill_in(:email, with: "sadi@example.com")
    click_on I18n.t("voices.new_claim.submit")
  end

  it "cannot claim an already claimed voice" do
    visit claim_voice_path(claimed_voice)

    expect(page).to have_text("Voice already taken")
  end
end
