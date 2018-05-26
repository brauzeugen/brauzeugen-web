class PollOption < ApplicationRecord
  belongs_to :poll
  has_many :poll_option_voices
  has_many :voices, through: :poll_option_voices
end
