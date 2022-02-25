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
# 10.times do
# striker = Striker.new(
#     renter_id: User.first.id,
#     war_tag: Faker::Beer.unique.name,
#     description: Faker::ChuckNorris.fact,
#     address: Faker::Address.street_address,
#     price: rand(50..100)
#   )
#   file1 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645719448/development/yd54z8acvcqgelrlibebsgof8aku.jpg')
#   file2 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645719447/development/c9mpi65tryk0wbntp2bkg6gdaw5z.jpg')
#   file3 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645642625/development/22kla48fpexxd4agvzhmwnfbfx14.jpg')
#   striker.photos.attach(io: file1, filename: 'test1_upload.png', content_type: 'image/png')
#   striker.photos.attach(io: file2, filename: 'test2_upload.png', content_type: 'image/png')
#   striker.photos.attach(io: file3, filename: 'test3_upload.png', content_type: 'image/png')
#   striker.save!
# end

# Montreal
striker = Striker.new(
    renter_id: User.first.id,
    war_tag: Faker::Beer.unique.name,
    description: Faker::ChuckNorris.fact,
    address: '3877 Rue Saint-Zotique, Montreal',
    price: rand(50..100)
  )

file1 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645797077/evms66ayjd01a0grarelze5eu622_e1bzfw.jpg')
file2 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645797076/vd6rht6kb94hu0uwrambh1cmas2d_u2wq9u.jpg')
file3 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645797076/ug7w9a82qiw2gh5vrd0ft7o0x8t7_ivquii.jpg')
striker.photos.attach(io: file1, filename: 'test1_upload.png', content_type: 'image/png')
striker.photos.attach(io: file2, filename: 'test2_upload.png', content_type: 'image/png')
striker.photos.attach(io: file3, filename: 'test3_upload.png', content_type: 'image/png')
striker.save!

striker = Striker.new(
  renter_id: User.first.id,
  war_tag: Faker::Beer.unique.name,
  description: Faker::ChuckNorris.fact,
  address: '6808 Rue Molson, Montreal',
  price: rand(50..100)
)

file1 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645797076/u5khlp8jz9o5mbktaddsm5dz3svt_etd3wo.jpg')
file2 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645797075/Inciter-%C3%A0-faire-gr%C3%A8ve_ymianu_idsgci.jpg')
file3 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645797076/download_1_virimk_htvamh.jpg')
striker.photos.attach(io: file1, filename: 'test1_upload.png', content_type: 'image/png')
striker.photos.attach(io: file2, filename: 'test2_upload.png', content_type: 'image/png')
striker.photos.attach(io: file3, filename: 'test3_upload.png', content_type: 'image/png')
striker.save!

striker = Striker.new(
  renter_id: User.first.id,
  war_tag: Faker::Beer.unique.name,
  description: Faker::ChuckNorris.fact,
  address: '1059 Wellington St, Montreal',
  price: rand(50..100)
)

file1 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645797076/1408977-montreal-quelques-centaines-grevistes-reunis_flj4rq_gb2vyf.jpg')
file2 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645797075/download_dqwngl_e9e1qj.jpg')
file3 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645797075/italy-milan-jan-17-2022-260nw-2108772716_ritgel_l4aptm.jpg')
striker.photos.attach(io: file1, filename: 'test1_upload.png', content_type: 'image/png')
striker.photos.attach(io: file2, filename: 'test2_upload.png', content_type: 'image/png')
striker.photos.attach(io: file3, filename: 'test3_upload.png', content_type: 'image/png')
striker.save!

# New york
striker = Striker.new(
  renter_id: User.first.id,
  war_tag: Faker::Beer.unique.name,
  description: Faker::ChuckNorris.fact,
  address: '20 W 34th St, New York, NY 10001, United States',
  price: rand(50..100)
)

file1 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798277/new_york4_mpbyr1.jpg')
file2 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798277/new_york3_gqmred.jpg')
file3 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798277/new_york5_hu38wd.jpg')
striker.photos.attach(io: file1, filename: 'test1_upload.png', content_type: 'image/png')
striker.photos.attach(io: file2, filename: 'test2_upload.png', content_type: 'image/png')
striker.photos.attach(io: file3, filename: 'test3_upload.png', content_type: 'image/png')
striker.save!

striker = Striker.new(
  renter_id: User.first.id,
  war_tag: Faker::Beer.unique.name,
  description: Faker::ChuckNorris.fact,
  address: 'New York, NY 10013, United States',
  price: rand(50..100)
)

file1 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798277/new_york2_iyg3cl.jpg')
file2 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798277/new_york1_wqhr7g.jpg')
file3 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645797077/evms66ayjd01a0grarelze5eu622_e1bzfw.jpg')
striker.photos.attach(io: file1, filename: 'test1_upload.png', content_type: 'image/png')
striker.photos.attach(io: file2, filename: 'test2_upload.png', content_type: 'image/png')
striker.photos.attach(io: file3, filename: 'test3_upload.png', content_type: 'image/png')
striker.save!

# paris
striker = Striker.new(
  renter_id: User.first.id,
  war_tag: Faker::Beer.unique.name,
  description: Faker::ChuckNorris.fact,
  address: '35 Rue du Chevalier de la Barre, 75018 Paris, France',
  price: rand(50..100)
)

file1 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798665/paris1_yhgbbr.jpg')
file2 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798662/paris4_bbmvnx.jpg')
file3 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798662/paris8_wzceha.jpg')
striker.photos.attach(io: file1, filename: 'test1_upload.png', content_type: 'image/png')
striker.photos.attach(io: file2, filename: 'test2_upload.png', content_type: 'image/png')
striker.photos.attach(io: file3, filename: 'test3_upload.png', content_type: 'image/png')
striker.save!

striker = Striker.new(
  renter_id: User.first.id,
  war_tag: Faker::Beer.unique.name,
  description: Faker::ChuckNorris.fact,
  address: '5 Av. Anatole France, 75007 Paris, France',
  price: rand(50..100)
)

file1 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798662/paris5_oix963.jpg')
file2 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798662/paris9_jigwtb.jpg')
file3 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798662/paris3_wiumjg.jpg')
striker.photos.attach(io: file1, filename: 'test1_upload.png', content_type: 'image/png')
striker.photos.attach(io: file2, filename: 'test2_upload.png', content_type: 'image/png')
striker.photos.attach(io: file3, filename: 'test3_upload.png', content_type: 'image/png')
striker.save!

striker = Striker.new(
  renter_id: User.first.id,
  war_tag: Faker::Beer.unique.name,
  description: Faker::ChuckNorris.fact,
  address: 'Pl. du Panthéon, 75005 Paris, France',
  price: rand(50..100)
)

file1 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798662/paris2_wmbl54.jpg')
file2 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798662/paris7_ghzvra.jpg')
file3 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798662/paris6_yaa3dq.jpg')
striker.photos.attach(io: file1, filename: 'test1_upload.png', content_type: 'image/png')
striker.photos.attach(io: file2, filename: 'test2_upload.png', content_type: 'image/png')
striker.photos.attach(io: file3, filename: 'test3_upload.png', content_type: 'image/png')
striker.save!

# Los angeles
striker = Striker.new(
  renter_id: User.first.id,
  war_tag: Faker::Beer.unique.name,
  description: Faker::ChuckNorris.fact,
  address: '5905 Wilshire Blvd, Los Angeles, CA 90036, United States',
  price: rand(50..100)
)

file1 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798971/losangeles2_o3wv0w.jpg')
file2 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798971/losangeles1_nzot8f.jpg')
file3 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645798971/losangeles3_la08ng.jpg')
striker.photos.attach(io: file1, filename: 'test1_upload.png', content_type: 'image/png')
striker.photos.attach(io: file2, filename: 'test2_upload.png', content_type: 'image/png')
striker.photos.attach(io: file3, filename: 'test3_upload.png', content_type: 'image/png')
striker.save!

# Chicago
striker = Striker.new(
  renter_id: User.first.id,
  war_tag: Faker::Beer.unique.name,
  description: Faker::ChuckNorris.fact,
  address: '5700 S DuSable Lake Shore Dr, Chicago, IL 60637, United States',
  price: rand(50..100)
)

file1 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645799154/chicago2_u4xvzj.jpg')
file2 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645799154/chicago1_ktepj6.jpg')
file3 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645799154/chicago3_jpsmoa.jpg')
striker.photos.attach(io: file1, filename: 'test1_upload.png', content_type: 'image/png')
striker.photos.attach(io: file2, filename: 'test2_upload.png', content_type: 'image/png')
striker.photos.attach(io: file3, filename: 'test3_upload.png', content_type: 'image/png')
striker.save!

# Moscow
striker = Striker.new(
  renter_id: User.first.id,
  war_tag: Faker::Beer.unique.name,
  description: Faker::ChuckNorris.fact,
  address: 'Prospekt Mira, 119, Moscow, Russia, 129223',
  price: rand(50..100)
)

file1 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645799383/moscow1_ljz5xv.jpg')
file2 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645799383/moscow3_bqtjsm.jpg')
file3 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645799383/moscow2_oqhzse.jpg')
striker.photos.attach(io: file1, filename: 'test1_upload.png', content_type: 'image/png')
striker.photos.attach(io: file2, filename: 'test2_upload.png', content_type: 'image/png')
striker.photos.attach(io: file3, filename: 'test3_upload.png', content_type: 'image/png')
striker.save!

# Tokyo
striker = Striker.new(
  renter_id: User.first.id,
  war_tag: Faker::Beer.unique.name,
  description: Faker::ChuckNorris.fact,
  address: 'Tokyo 151-8557, Japan',
  price: rand(50..100)
)

file1 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645799568/tokyo2_lfieel.jpg')
file2 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645799568/tokyo1_tjhezy.jpg')
file3 = URI.open('https://res.cloudinary.com/dcgubphgl/image/upload/v1645799568/tokyo3_drsbby.jpg')
striker.photos.attach(io: file1, filename: 'test1_upload.png', content_type: 'image/png')
striker.photos.attach(io: file2, filename: 'test2_upload.png', content_type: 'image/png')
striker.photos.attach(io: file3, filename: 'test3_upload.png', content_type: 'image/png')
striker.save!

puts "all good 10 strikers created"
