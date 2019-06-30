class User < ApplicationRecord
  has_many :voices, dependent: :nullify

  def claim_voice!; end
end
