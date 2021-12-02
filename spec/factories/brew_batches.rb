FactoryBot.define do
  factory :brew_batch do
    sequence :name do |n|
      "Batch #{n}"
    end

    description { "What a marvelous ale!" }
  end
end
