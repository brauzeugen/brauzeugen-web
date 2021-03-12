require 'rails_helper'

RSpec.describe 'admin/releases/show', type: :view do
  before(:each) do
    @release = assign(:release, Release.create!(
                                  email_template: 'MyText',
                                  claim_limit: 2
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
