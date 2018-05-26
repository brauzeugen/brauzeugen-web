require 'rails_helper'

RSpec.describe PollOptionVoice, type: :model do
  it { is_expected.to belong_to(:voice) }
  it { is_expected.to belong_to(:poll_option) }
end
