# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create(id: 1, first_name: "Ravi", last_name: "Patel", email: "example@example.com", password: "monkeyButt24!", password_confirmation: "monkeyButt24!")

Store.create(id: 1, name: "Guess")
Store.create(id: 2, name: "Express")
Store.create(id: 3, name: "Container Store")

d1 = Deal.create(title: "50% Off", description: "this is the best deal in a long time", store_id: 1)
d2 = Deal.create(title: "80% Off", description: "this is the unqiue deal", store_id: 2)
d3 = Deal.create(title: "BOGO", description: "this is the free deal", store_id: 3)

u.deals << d1
u.deals << d2
