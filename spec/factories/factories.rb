FactoryBot.define do

  factory :user do
    name { Faker::Internet.username }
    email { Faker::Internet.safe_email }
    password { Faker::Internet.password(6, 10) }
  end

  factory :menu do
    date { "2001-06-21" }
  end

end