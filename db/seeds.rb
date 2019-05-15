# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")


require 'json'
require 'open-uri'


url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

user_serialized = open(url).read
user = JSON.parse(user_serialized)

Ingredient.destroy_all

160.times do |x|
  ingredient = Ingredient.create(name: user['drinks'][x]["strIngredient1"])
end

# user['drinks'].each do |hash|
#   hash["strIngredient1"]
# end

# si quiero que coga random 10 de mi API:
# 10.times do
#   ingredient = Ingredient.create(name: user['drinks'][rand(0..20)]["strIngredient1"])
# end
