class User < ApplicationRecord
  has_many :voices, dependent: :nullify
end
