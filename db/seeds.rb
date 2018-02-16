# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

puts "Deleting all the ingredients \o/"
Ingredient.destroy_all
url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
list = JSON.parse(user_serialized)
list["drinks"].each do |drink|
  Ingredient.create!(name: drink["strIngredient1"])
end
puts "the end"


puts "Deleting all the Cocktails \o/"
Cocktail.destroy_all
puts "Creating new cocktails"
Cocktail.create!(name:"Mojito", picture: "https://images.unsplash.com/photo-1510626176961-4b57d4fbad03?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8ff8354c801234e13cf9fb8fd39b045f&auto=format&fit=crop&w=2468&q=80")
Cocktail.create!(name:"Margharita", picture: "https://images.unsplash.com/photo-1472245088132-ccd50746725c?ixlib=rb-0.3.5&s=a82d412efc50b6b217d561b72123be16&auto=format&fit=crop&w=2549&q=80")
Cocktail.create!(name:"Moscow mule", picture: "https://images.unsplash.com/photo-1513416543495-10c173ed9908?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=aff0b38f8272e060f9c4430aa661e24f&auto=format&fit=crop&w=1350&q=80")
Cocktail.create!(name:"White Russian", picture: "https://images.unsplash.com/photo-1502156473420-13f1315e9be4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=593a9e420053a4d1b5560afc0f92b76d&auto=format&fit=crop&w=668&q=80")
Cocktail.create!(name:"Negroni" , picture: "https://images.unsplash.com/photo-1470337458703-46ad1756a187?ixlib=rb-0.3.5&s=d4c8fba1258c115a383651915ae15fec&auto=format&fit=crop&w=1349&q=80")
Cocktail.create!(name:"Pisco Sour", picture: "https://images.unsplash.com/photo-1482349212652-744925892164?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9b719ce0351a8dd27a1ecc9f18d9210f&auto=format&fit=crop&w=1490&q=80")
puts "The end"
