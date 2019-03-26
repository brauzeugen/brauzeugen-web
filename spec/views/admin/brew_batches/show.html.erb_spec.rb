require 'rails_helper'

RSpec.describe "admin/brew_batches/show", type: :view do
  before(:each) do
    @brew_batch = assign(:brew_batch, BrewBatch.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
