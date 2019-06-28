FactoryBot.define do

  factory :user do
    email { "admin@admin.com" }
    password { "admin123" }
  end

  factory :menu do
    date { "2001-06-21" }
  end

end