# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Mealtime.destroy_all
Course.destroy_all
Dish.destroy_all

foods = [ "Taramasalata",
          "Olives and olive oil",
          "Dolmades",
          "Moussaka",
          "Grilled meat",
          "Fresh fish",
          "Courgette balls (kolokythokeftedes)",
          "Octopus",
          "Feta and cheeses",
          "Honey and baklava",
          "Tuna Melts",
          "Ratatouille",
          "Creamed Spinach",
          "Roast Chicken",
          "Ice Cream",
          "Spaghetti and Meatballs",
          "Pie",
          "Chocolate Pudding",
          "Baked Ziti",
          "Biscuits and Gravy"]

mealtimes = ["Breakfast", "Lunch", "Dinner", "Midnight Fat Attack",
  "2nd Breakfast", "Secondsies", "Linner", "Dunch"]

mealtimes.each do |m|
  Mealtime.create!(name: m)
end
@mealtimes = Mealtime.all

courses = [ "Meats", "Desserts", "Salads", "Weirds", "Vegs", "Sides",
"chickens", "air"]
courses.each do |c|
  Course.create!(
    name: c,
    mealtime_id: @mealtimes.sample.id,
  )
end
@courses = Course.all

foods.each do |f|
  Dish.create!(
    name: f << rand(1000).to_s,
    price: Faker::Number.decimal(2),
    course_id: @courses.sample.id,
    description: Faker::Lorem.paragraph)
end


