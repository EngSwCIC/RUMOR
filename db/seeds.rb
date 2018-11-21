# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "user@user.com", password: "user123")
puts "SEED DAS DATAS"
datinha = Date.new(2018, 01, 01)
while(datinha.year == 2018)
  puts datinha.strftime("%Y - %m - %d")
  Menu.create(date: datinha)
  datinha = datinha.tomorrow
end


puts "CRUD de Customer Satisfaction"

array_meals = ["Cafe", "Almoco", "Janta"]


888.times do

    CustomerSatisfaction.create([
        {
            user_group: Random.new.rand(1..3),
            meal: array_meals[Random.new.rand(0..2)],
            rating: Random.new.rand(1..5),
            like: Faker::Lorem.sentence,
            disgust: Faker::Lorem.sentence,
            suggestion: Faker::Lorem.sentence
        }
    ])


end

puts "CRUD Finalizado"