class BrewBatch < ApplicationRecord
  has_many :voices, dependent: :restrict_with_exception

  def issue_voices!(amount)
    amount.times do
      voices << Voice.new(token: SecureRandom.hex)
    end
    save!
  end
end
