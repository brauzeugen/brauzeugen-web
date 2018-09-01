class Voice < ApplicationRecord
  has_many :poll_option_voices, dependent: :destroy
  has_many :poll_options, through: :poll_option_voices
  belongs_to :user, optional: true

  def to_param
    token
  end
end
