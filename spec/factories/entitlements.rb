FactoryBot.define do
  factory :entitlement do
    release
    user
    value { 1 }
    paid { false }
  end
end
