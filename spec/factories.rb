FactoryBot.define do
  factory :campaign do
    # title Faker::Internet.user_name(16..16)
    # description Faker::Name.title
    # status Faker::Name.first_name
    # current_amount Faker::Number.number(9)
    # needed_amount Faker::Number.number(9)
    # requisite Faker::Base.numerify('################')
    # category_id 1
    # finished_at Time.now
    title Faker::Book.title
    # description Faker::Text.realText($maxNbChars = 2000)
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
