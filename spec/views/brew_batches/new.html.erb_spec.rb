require 'rails_helper'

RSpec.describe "brew_batches/new", type: :view do
  before(:each) do
    assign(:brew_batch, BrewBatch.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new brew_batch form" do
    render

    assert_select "form[action=?][method=?]", admin_brew_batches_path, "post" do

      assert_select "input[name=?]", "brew_batch[name]"

      assert_select "textarea[name=?]", "brew_batch[description]"
    end
  end
end
