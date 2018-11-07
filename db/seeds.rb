# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Review.destroy_all


res1 = Restaurant.create!(name: "Upon Thames", address: "Richmond Road", phone_number: "0152425 736273", category: "chinese")
res2 = Restaurant.create!(name: "Roma", address: "London Road", phone_number: "045653 743628", category: "italian")
res3 = Restaurant.create!(name: "Manger", address: "Paris Road", phone_number: "456789 4567890", category: "french")

Review.create!(content: "wonderful", rating: 3, restaurant_id: res1.id)
Review.create!(content: "wonderful", rating: 3, restaurant_id: res2.id)
Review.create!(content: "wonderful", rating: 3, restaurant_id: res3.id)
