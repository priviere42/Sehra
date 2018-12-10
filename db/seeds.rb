# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

City.create!(name: "Bordeaux" , description: "La Belle Endormie" ,image_url: "city/bordeaux.jpg")
City.create!(name: "Lyon" , description: "La Capitale des Gaules" ,image_url: "city/lyon.jpg")
City.create!(name: "Marseille" , description: "La Cité Phocéenne" ,image_url: "city/marseille.jpg")
City.create!(name: "Nice" , description: "Nissa la Bella" ,image_url: "city/nice.jpg")
City.create!(name: "Paris" , description: "Paname, la Capitale" ,image_url: "city/paris.jpg")
City.create!(name: "Toulouse" , description: "La Ville Rose" ,image_url: "city/toulouse.jpg")


Place.create!(name: "Old Library", address: "1 Main Street", image_url: "place/1.jpg", city_id: 1, latitude: 44.837789, longitude: -0.57918)
Place.create!(name: "Attraction Park", address: "2 Main Street", image_url: "place/2.jpg", city_id: 2, latitude: 45.764043, longitude: 4.835659)
Place.create!(name: "Abandonned Road", address: "3 Main Street", image_url: "place/3.png", city_id: 3, latitude: 43.300000, longitude: 5.400000)
Place.create!(name: "Empty Pool", address: "4 Main Street", image_url: "place/4.jpg", city_id: 4, latitude: 43.700000, longitude: 7.250000)
Place.create!(name: "Destroyed Stadium", address: "5 Main Street", image_url: "place/5.jpg", city_id: 5, latitude: 48.866667, longitude: 2.333333)
Place.create!(name: "Building", address: "6 Main Street", image_url: "place/6.jpg", city_id: 6, latitude: 43.600000, longitude: 1.433333)


20.times do |index|
    Event.create!(name: Faker::StarWars.character, description: Faker::StarWars.quote, image1: "event/#{rand(1..6)}.jpg", image2: "event/potato.jpg", image3: "event/potato.jpg", place_id: rand(1..6), active: true)
end

20.times do |index|
    User.create!(email: "user#{index+1}@mail.com", password: "password", first_name: Faker::Name.first_name ,last_name: Faker::Name.last_name)
end

User.create!(email: "admin@admin.com", password: "adminpassword", first_name: "Admin", last_name: "Admin", admin: true)

user = 1
event = 1

# All users voting for ALL events:
# while user <= User.count
#     if event < Event.count
#         Event.count.times do |index|
#             Vote.create!(event_id: event, user_id: user)
#             event += 1
#         end
#     end
#     event = 1
#     user += 1
# end

# All users vote for 80% of all events randomly:
while user <= User.count
    (Event.count*0.8).to_i.times do 
        Vote.create!(event_id: Faker::Number.unique.between(1, Event.count),user_id: user)
    end
    user += 1
    Faker::Number.unique.clear
end