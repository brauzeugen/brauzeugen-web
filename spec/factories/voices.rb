FactoryBot.define do
  factory :voice do
    token { SecureRandom.hex }

    trait :claimed do
      user
    end
  end
end
