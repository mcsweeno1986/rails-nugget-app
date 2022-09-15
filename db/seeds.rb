# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Category.destroy_all

puts "Creating categories..."
beauty = {name: "Beauty", title: "TBC", location: "London", rating: 5, review: "TBC"}
local_favs =  {name: "Local Favs", title: "TBC", location: "London", rating: 4, review: "TBC"}
restaurants = {name: "Restaurants", title: "TBC", location: "Mexico", rating: 4, review: "TBC"}
hotels = {name: "Hotels", title: "TBC", location: "Worldwide", rating: 4, review: "TBC"}
travel = {name: "Travel", title: "TBC", location: "London", rating: 4, review: "TBC"}
books = {name: "Books", title: "TBC", location: "London", rating: 4, review: "TBC"}
streaming = {name: "Streaming", title: "TBC", location: "worldwideweb", rating: 4, review: "TBC"}
exercise = {name: "Exercise", title: "TBC", location: "London", rating: 4, review: "TBC"}
pubs = {name: "Pubs/Bars", title: "TBC", location: "London", rating: 4, review: "TBC"}


[beauty, local_favs, restaurants, hotels, travel, books, streaming, exercise,pubs].each do |attributes|
  category = Category.create!(attributes)
  puts "Created #{category.name}"
end
puts "Finished!"
