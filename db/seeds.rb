# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

foods = ["Taramasalata",
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

courses = Course.all

foods.each do |f|
  Dish.create!(
    name: f,
    price: Faker::Number.decimal(2),
    course_id: courses.sample.id,
    description: Faker::Lorem.paragraph)
end
