class Voice < ApplicationRecord
  has_many :poll_option_voices
  has_many :poll_options, through: :poll_option_voices
end
