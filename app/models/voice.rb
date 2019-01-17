class Voice < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :brew_batch

  scope :claimed, -> { where.not(user_id: nil) }
  scope :unclaimed, -> { where(user_id: nil) }

  def to_param
    token
  end
end
