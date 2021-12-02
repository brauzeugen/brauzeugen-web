require "rails_helper"

RSpec.describe "Home page", type: :system do
  it "can be shown" do
    visit root_path

    expect(page).to have_text("Guten Tag")
  end
end
