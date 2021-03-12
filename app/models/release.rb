class Release < ApplicationRecord
  has_many :claims, dependent: :restrict_with_exception

  validates :claim_limit, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end
