FactoryBot.define do
  factory :voice do
    token { SecureRandom.hex }
    brew_batch

    trait :claimed do
      user
    end
  end
end
