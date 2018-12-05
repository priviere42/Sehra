# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.create!(name: "Bordeaux" , description: "La Belle Endormie" ,image_url: "/assets/city/bordeaux.jpg")
City.create!(name: "Lyon" , description: "La Capitale des Gaules" ,image_url: "/assets/city/lyon.jpg")
City.create!(name: "Marseille" , description: "La Cité Phocéenne" ,image_url: "/assets/city/marseille.jpg")
City.create!(name: "Nice" , description: "Nissa la Bella" ,image_url: "/assets/city/nice.jpg")
City.create!(name: "Paris" , description: "Paname, la Capitale" ,image_url: "/assets/city/paris.jpg")
City.create!(name: "Toulouse" , description: "La Ville Rose" ,image_url: "/assets/city/toulouse.jpg")
