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
User.destroy_all

User.create!(email: "test@test.com", password: "123456", username: "test")

# Populate the DB with 10 strikers
10.times do
striker = Striker.new(
    renter_id: User.first.id,
    war_tag: Faker::Beer.unique.name,
    description: Faker::ChuckNorris.fact,
    address: Faker::Address.street_address,
    price: rand(50..100)
  )
  file1 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645719448/development/yd54z8acvcqgelrlibebsgof8aku.jpg')
  file2 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645719447/development/c9mpi65tryk0wbntp2bkg6gdaw5z.jpg')
  file3 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645642625/development/22kla48fpexxd4agvzhmwnfbfx14.jpg')
  striker.photos.attach(io: file1, filename: 'test1_upload.png', content_type: 'image/png')
  striker.photos.attach(io: file2, filename: 'test2_upload.png', content_type: 'image/png')
  striker.photos.attach(io: file3, filename: 'test3_upload.png', content_type: 'image/png')
  striker.save!
end
puts "all good 10 strikers created"
