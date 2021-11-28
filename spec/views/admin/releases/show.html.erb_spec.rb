require 'rails_helper'

RSpec.describe 'admin/releases/show', type: :view do
  before(:each) do
    @release = assign(:release, Release.create!(
                                  email_template: 'MyText'
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/MyText/)
  end
end
