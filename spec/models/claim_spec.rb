require 'rails_helper'

RSpec.describe Claim, type: :model do
  describe 'factory' do
    it 'works' do
      create(:claim)
    end
  end
end
