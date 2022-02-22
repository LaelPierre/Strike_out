# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Clean the DB
Striker.destroy_all

# Populate the DB with 10 strikers
10.times do
  Striker.create!(
    renter_id: 1,
    war_tag: Faker::Beer.name,
    description: Faker::ChuckNorris.fact,
    price: rand(50..100)
  )
end
puts "all good 10 strikers created"
