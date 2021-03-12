class Claim < ApplicationRecord
  belongs_to :release
  belongs_to :user
end
