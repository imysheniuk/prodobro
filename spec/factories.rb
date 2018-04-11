FactoryBot.define do
  factory :campaign do
    title 'MyString'
    description 'MyText'
    status 'MyString'
    current_amount 1
    needed_amount 1
    requisite 'MyString'
    category_id 1
    finished_at Time.now
  end
  factory :user do
    name Faker::Name.first_name
    surname Faker::Name.last_name
    phone_number Faker::Base.numerify('+380#########')
    email Faker::Internet.email
    password '369852'
  end
end
