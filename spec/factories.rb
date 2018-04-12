FactoryBot.define do
  factory :campaign do
    title Faker::Book.title
    description 'Qwertyuiop' * 50
    status 'MyString'
    current_amount 1234567
    needed_amount 1234567
    requisite '1234567890123456'
    category_id 1
    finished_at Time.zone.now
  end
  factory :user do
    name Faker::Name.first_name
    surname Faker::Name.last_name
    phone_number Faker::Base.numerify('+380#########')
    email Faker::Internet.email
    password '369852'
  end
end
