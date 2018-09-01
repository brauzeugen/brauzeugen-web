FactoryBot.define do
  factory :poll_option do
    description { 'Ja, ich will' }
    poll
  end
end
