require 'rails_helper'

RSpec.describe 'admin/releases/index', type: :view do
  before(:each) do
    assign(:releases, [
             Release.create!(
               email_template: 'MyText',
               claim_limit: 2
             ),
             Release.create!(
               email_template: 'MyText',
               claim_limit: 2
             )
           ])
  end

  it 'renders a list of admin/releases' do
    render
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
  end
end
