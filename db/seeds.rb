# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  name = [Faker::Food.dish, Faker::Food.sushi, Faker::Food.Fruit]
  calories = Faker::Number.between(from: 50, to: 1000)
  weight = Faker::Measurement.metric_weight
  ingredient = Faker::Food.ingredient
  bestby = Faker::Date
end
