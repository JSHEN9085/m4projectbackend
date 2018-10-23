# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create!(username: "test", password: 123, email: "123@123.com")
# User.create!(username: "test2", password: 123, email: "1234@123.com")
#
# Recipe.create!(name: "recipe1", cuisine: "chinese", image: "https://api.norecipes.com/wp-content/uploads/2018/08/teriyaki-chicken-recipe_010.jpg", servings: "nothing", calories: 100, user_id:1, dietlabel: "low_crad")
# Recipe.create!(name: "recipe2", cuisine: "japanese", image: "https://api.norecipes.com/wp-content/uploads/2018/08/teriyaki-chicken-recipe_010.jpg", servings: "nothing", calories: 100, user_id:1, dietlabel: "low_crad")
#
# Ingredient.create!(name: "ingredient1")
#
# Recipeingredient.create!(ingredient_id: Ingredient.first.id, recipe_id: Recipe.first.id)
#
#
# Collection.create!(collector_id: 2, recipe_id: Recipe.first.id)

User.create!(username: "API", password: "1", email: "letscook@gmail.com")
User.create!(username: "Jun", password: "1", email: "jshen9085@gmail.com")


# Recipe.create!(name: "recipe1", image: "null", calories: 100, user_id: 1, cooking_time: 90, ingredients: ["apple", "banala"])
# Recipe.create!(name: "recipe2", image: "null", calories: 100, user_id: 2, cooking_time: 90, ingredients: ["pear"])
# Recipe.create!(name: "recipe3", image: "null", calories: 100, user_id: 1, cooking_time: 90, ingredients: ["eggplant", "pork"])
# Recipe.create!(name: "recipe4", image: "null", calories: 100, user_id: 2, cooking_time: 90, ingredients: ["wine", "beef"])
# Recipe.create!(name: "recipe5", image: "null", calories: 100, user_id: 1, cooking_time: 90, ingredients: ["mink", "chocolate"])
# Recipe.create!(name: "recipe6", image: "null", calories: 100, user_id: 1, cooking_time: 90, ingredients: ["egg", "noodle", "soup"])
#
# Collection.create!(collector_id: 2, recipe_id: 1)
# Collection.create!(collector_id: 2, recipe_id: 3)
# Collection.create!(collector_id: 2, recipe_id: 5)
