require "rails_helper"

RSpec.describe "Brew batches", type: :system do
  it "only shows published brew batches" do
    published = create(:brew_batch, published_at: 1.minute.ago)
    first_unpublished = create(:brew_batch, published_at: nil)
    second_unpublished = create(:brew_batch, published_at: 1.minute.from_now)

    visit brew_batches_path

    expect(page).to have_text(published.name)
    expect(page).not_to have_text(first_unpublished.name)
    expect(page).not_to have_text(second_unpublished.name)
  end

  it "orders batches with publishing date" do
    create(:brew_batch, published_at: 1.minute.ago, serial_number: "BG20-A")
    create(:brew_batch, published_at: 2.minutes.ago, serial_number: "BG20-B")
    create(:brew_batch, published_at: 3.minutes.ago, serial_number: "BG20-C")

    visit brew_batches_path

    expect(page).to have_text(/BG20-A.*BG20-B.*BG20-C/m)
  end
end
