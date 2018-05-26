require 'rails_helper'

RSpec.describe Poll, type: :model do
  it { is_expected.to have_many(:poll_options) }
end
