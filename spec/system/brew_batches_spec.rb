require 'rails_helper'

RSpec.describe 'Brew batches', type: :system do
  it 'only shows published brew batches' do
    published = create(:brew_batch, published_at: 1.minute.ago)
    first_unpublished = create(:brew_batch, published_at: nil)
    second_unpublished = create(:brew_batch, published_at: 1.minute.from_now)

    visit brew_batches_path

    expect(page).to have_text(published.name)
    expect(page).not_to have_text(first_unpublished.name)
    expect(page).not_to have_text(second_unpublished.name)
  end

  it 'orders batches with serial number' do
    create(:brew_batch, published_at: 1.minute.ago, serial_number: 'BG20-01')
    create(:brew_batch, published_at: 1.minute.ago, serial_number: 'BG19-20')
    create(:brew_batch, published_at: 1.minute.ago, serial_number: 'BG19-01')

    visit brew_batches_path

    expect(page).to have_text(/BG20-01.*BG19-20.*BG19-01/m)
  end
end
