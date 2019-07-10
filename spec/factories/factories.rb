FactoryBot.define do

  factory :user do
    email { "teste@teste.com" }
    password { "admin123" }
  end

  factory :menu do
    date { "2001-06-21" }
  end

end
