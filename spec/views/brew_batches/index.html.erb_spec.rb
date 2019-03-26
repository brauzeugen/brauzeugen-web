require 'rails_helper'

RSpec.describe "brew_batches/index", type: :view do
  before(:each) do
    assign(:brew_batches, [
      BrewBatch.create!(
        :name => "Name",
        :description => "MyText"
      ),
      BrewBatch.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of brew_batches" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
