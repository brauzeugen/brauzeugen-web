require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'factory' do
    it 'works' do
      create(:user)
    end
  end

  it { is_expected.to have_many(:voices) }
end
