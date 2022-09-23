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
beauty = {title: "Beauty"}
local_favs =  {title: "Local Favs"}
restaurants = {title: "Restaurants"}
hotels = {title: "Hotels"}
travel = {title: "Travel"}
books = {title: "Books"}
streaming = {title: "Streaming"}
exercise = {title: "Exercise"}
pubs = {title: "Pubs/Bars"}

[beauty, local_favs, restaurants, hotels, travel, books, streaming, exercise,pubs].each do |attributes|
  category = Category.create!(attributes)
  puts "Created #{category.title}"
end
puts "Finished!"

puts "Cleaning database..."
SubCategory.destroy_all

puts "Creating sub categories..."
beauty = {name: "MayFive",location: "Chiswick", rating: 5, review: "TBC", category: Category.find_by(title:"Beauty")}
beauty = {name: "NailsInc",location: "Chiswick", rating: 5, review: "TBC", category: Category.find_by(title:"Beauty")}
local_favs =  {name: "Anglesea Arms", location: "Ravenscourt Park", rating: 4, review: "TBC", category: Category.find_by(title:'Local Favs')}
# restaurants = {name: "Restaurants", title: "TBC", location: "Mexico", rating: 4, review: "TBC", category_id: Category.find_by(name:'Restaurants')}
# hotels = {name: "Hotels", title: "TBC", location: "Worldwide", rating: 4, review: "TBC", category_id: Category.find_by(name:'Hotels')}
# travel = {name: "Travel", title: "TBC", location: "London", rating: 4, review: "TBC", category_id: Category.find_by(name:'Travel')}
# books = {name: "Books", title: "TBC", location: "London", rating: 4, review: "TBC", category_id: Category.find_by(name:'Books')}
# streaming = {name: "Streaming", title: "TBC", location: "worldwideweb", rating: 4, review: "TBC", category_id: Category.find_by(name:'Streaming')}
# exercise = {name: "Exercise", title: "TBC", location: "London", rating: 4, review: "TBC", category_id: Category.find_by(name:'Exercise')}
# pubs = {name: "Pubs/Bars", title: "TBC", location: "London", rating: 4, review: "TBC", category_id: Category.find_by(name:'ubs')}


[beauty, local_favs].each do |attributes|
  sub_category = SubCategory.create!(attributes)
  puts "Created #{sub_category.name}"
end
puts "Finished!"
