FactoryBot.define do
  factory :news do
    title Faker::Lorem.sentence
    description Faker::Lorem.paragraph(4)
  end
end
