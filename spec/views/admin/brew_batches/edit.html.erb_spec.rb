require "rails_helper"

RSpec.describe "admin/brew_batches/edit", type: :view do
  before(:each) do
    @brew_batch = assign(:brew_batch, BrewBatch.create!(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders the edit brew_batch form" do
    render

    assert_select "form[action=?][method=?]", admin_brew_batch_path(@brew_batch), "post" do
      assert_select "input[name=?]", "brew_batch[name]"

      assert_select "textarea[name=?]", "brew_batch[description]"
    end
  end
end
