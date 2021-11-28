require 'rails_helper'

RSpec.describe 'admin/releases/edit', type: :view do
  before(:each) do
    @release = assign(:release, Release.create!(
                                  email_template: 'MyText'
                                ))
  end

  it 'renders the edit release form' do
    render

    assert_select 'form[action=?][method=?]', admin_release_path(@release), 'post' do
      assert_select 'textarea[name=?]', 'release[email_template]'
    end
  end
end
