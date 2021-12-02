require "rails_helper"

RSpec.describe "admin/releases/index", type: :view do
  before(:each) do
    assign(:releases, create_list(:release, 2, email_subject: "MyText"))
  end

  it "renders a list of admin/releases" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
