FactoryBot.define do
  factory :release do
    email_template { 'MyText' }
    claim_limit { 1 }
  end
end
