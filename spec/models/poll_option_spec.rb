require 'rails_helper'

RSpec.describe PollOption, type: :model do
  it { is_expected.to have_many(:voices) }
end
