require 'rails_helper'

RSpec.describe 'admin/releases/new', type: :view do
  before(:each) do
    assign(:release, Release.new(
                       email_template: 'MyText',
                       claim_limit: 1
                     ))
  end

  it 'renders new release form' do
    render

    assert_select 'form[action=?][method=?]', admin_releases_path, 'post' do
      assert_select 'textarea[name=?]', 'release[email_template]'

      assert_select 'input[name=?]', 'release[claim_limit]'
    end
  end
end
