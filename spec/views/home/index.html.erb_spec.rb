require 'rails_helper'

RSpec.describe 'home/index.html.erb', type: :view do
  it 'renders the address' do
    render

    expect(rendered).to match(/Brauzeugen.*\n.*Neuhüslipark\ 8.*\n.*8645\ Jona/)
  end
end
