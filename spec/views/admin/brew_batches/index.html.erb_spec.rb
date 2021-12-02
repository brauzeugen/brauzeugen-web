require "rails_helper"

RSpec.describe "admin/brew_batches/index", type: :view do
  before(:each) do
    assign(:brew_batches, [create(:brew_batch, name: "Bier 1"), create(:brew_batch, name: "Bier 2")])
  end

  it "renders a list of brew_batches" do
    render
    assert_select "tr>td", text: "Bier 1".to_s, count: 1
    assert_select "tr>td", text: "Bier 2".to_s, count: 1
  end
end
