FactoryBot.define do
  factory :comment do
    body { "I can pass this test" }
    article
  end
end
