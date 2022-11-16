# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
Restaurant.destroy_all
CATEGORIES = %w[Chinese Italian Japanese French Belgian]
10.times do
  name = Faker::JapaneseMedia::StudioGhibli.movie
  number = rand(1..96)
  address = "#{number}, #{Faker::JapaneseMedia::StudioGhibli.character} avenue, #{Faker::Games::SuperMario.location}"
  phone_number = Faker::PhoneNumber.phone_number
  category = CATEGORIES[rand(1..4)]
  restaurant = Restaurant.new(name: name, address: address, phone_number: phone_number, category: category)
  restaurant.save!
end
