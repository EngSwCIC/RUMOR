# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "CRUD de Customer Satisfaction"

array_meals = ["Café", "Almoço", "Janta"]

888.times do

    CustomerSatisfaction.create([
        {
            user_group: Random.new.rand(1..3),
            meal: array_meals[Random.new.rand(1..3)],
            rating: Random.new.rand(1..5),
            like: Faker::Lorem.sentence,
            disgust: Faker::Lorem.sentence,
            suggestion: Faker::Lorem.sentence
        }
    ])


end

puts "CRUD Finalizado"