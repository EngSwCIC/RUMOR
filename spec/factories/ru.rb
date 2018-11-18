# frozen_string_literal: true

# spec/factories/ru.rb

FactoryBot.define do
  factory :ru do
    name Faker::RuPaul.queen
    working_hour Faker::Lorem.paragraph
    location Faker::LeagueOfLegends.location
  end
end
