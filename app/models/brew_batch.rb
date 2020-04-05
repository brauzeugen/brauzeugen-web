class BrewBatch < ApplicationRecord
  has_many :voices, dependent: :restrict_with_exception

  validates :serial_number, presence: true

  scope :published, -> { where(published_at: Time.zone.parse('2018-12-31')..Time.zone.now) }

  def issue_voices!(amount)
    amount.times do
      voices << Voice.new(token: SecureRandom.hex)
    end
    save!
  end
end
