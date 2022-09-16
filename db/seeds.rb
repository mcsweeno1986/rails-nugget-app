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

puts "Cleaning database..."
SubCategory.destroy_all

puts "Creating sub categories..."
beauty = {name: "MayFive", title: "Beauty", location: "Chiswick", rating: 5, review: "TBC", category_id: Category.find_by(name:'beauty')}
local_favs =  {name: "Anglesea Arms", title: "Local Favs", location: "Ravenscourt Park", rating: 4, review: "TBC", category_id: Category.find_by(name:'local_favs')}
restaurants = {name: "Restaurants", title: "TBC", location: "Mexico", rating: 4, review: "TBC", category_id: Category.find_by(name:'restaurants')}
hotels = {name: "Hotels", title: "TBC", location: "Worldwide", rating: 4, review: "TBC", category_id: Category.find_by(name:'hotels')}
travel = {name: "Travel", title: "TBC", location: "London", rating: 4, review: "TBC", category_id: Category.find_by(name:'travel')}
books = {name: "Books", title: "TBC", location: "London", rating: 4, review: "TBC", category_id: Category.find_by(name:'books')}
streaming = {name: "Streaming", title: "TBC", location: "worldwideweb", rating: 4, review: "TBC", category_id: Category.find_by(name:'streaming')}
exercise = {name: "Exercise", title: "TBC", location: "London", rating: 4, review: "TBC", category_id: Category.find_by(name:'exercise')}
pubs = {name: "Pubs/Bars", title: "TBC", location: "London", rating: 4, review: "TBC", category_id: Category.find_by(name:'pubs')}


[beauty, local_favs, restaurants, hotels, travel, books, streaming, exercise, pubs].each do |attributes|
  sub_category = SubCategory.create!(attributes)
  puts "Created #{sub_category.name}"
end
puts "Finished!"
