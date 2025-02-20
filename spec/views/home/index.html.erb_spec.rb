require "rails_helper"

RSpec.describe "home/index.html.erb", type: :view do
  it "renders the address" do
    render

    expect(rendered).to match(/Brauzeugen.*\n.*Alte Jonastrasse\ 12.*\n.*8640\ Rapperswil SG/)
  end
end
