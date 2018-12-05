# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

City.create!(name: "Bordeaux" , description: "La Belle Endormie" ,image_url: "/assets/city/bordeaux.jpg")
City.create!(name: "Lyon" , description: "La Capitale des Gaules" ,image_url: "/assets/city/lyon.jpg")
City.create!(name: "Marseille" , description: "La Cité Phocéenne" ,image_url: "/assets/city/marseille.jpg")
City.create!(name: "Nice" , description: "Nissa la Bella" ,image_url: "/assets/city/nice.jpg")
City.create!(name: "Paris" , description: "Paname, la Capitale" ,image_url: "/assets/city/paris.jpg")
City.create!(name: "Toulouse" , description: "La Ville Rose" ,image_url: "/assets/city/toulouse.jpg")


Place.create!(name: "Old Library", address: "1 Main Street", image_url: "/assets/place/1.jpg", city_id: 1)
Place.create!(name: "Attraction Park", address: "2 Main Street", image_url: "/assets/place/2.jpg", city_id: 2)
Place.create!(name: "Abandonned Road", address: "3 Main Street", image_url: "/assets/place/3.png", city_id: 3)
Place.create!(name: "Empty Pool", address: "4 Main Street", image_url: "/assets/place/4.jpg", city_id: 4)
Place.create!(name: "Destroyed Stadium", address: "5 Main Street", image_url: "/assets/place/5.jpg", city_id: 5)
Place.create!(name: "Building", address: "6 Main Street", image_url: "/assets/place/6.jpg", city_id: 6)


20.times do |index|
    Event.create!(name: Faker::Pokemon.name, description: Faker::HowIMetYourMother.quote, image1: "/assets/event/#{rand(1..6)}.jpg", place_id: rand(1..6))
end



