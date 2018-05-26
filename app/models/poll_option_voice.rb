class PollOptionVoice < ApplicationRecord
  belongs_to :poll_option
  belongs_to :voice
end
