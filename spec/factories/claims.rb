FactoryBot.define do
  factory :claim do
    release
    user
    value { 1 }
    fulfilled { false }
  end
end
