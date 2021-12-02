require "rails_helper"

RSpec.describe "admin/releases/new", type: :view do
  before(:each) do
    assign(:release, build(:release, email_subject: "MyText"))
  end

  it "renders new release form" do
    render

    assert_select "form[action=?][method=?]", admin_releases_path, "post" do
      assert_select "textarea[name=?]", "release[email_template]"
    end
  end
end
