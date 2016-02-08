# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user= User.new(name: "jaxlexy", email: "jalexy12@gmail.com" )
user.save

user.products.create(title:"Desk", description: "Best desk ever", deadline: DateTime.now + 1.hour)
user.products.create(title:"Pen", description: "Best Pen ever", deadline: DateTime.now + 2.hour)
user.products.create(title:"Pencil", description: "Best Pencil ever", deadline: DateTime.now + 3.hour)
user.products.create(title:"Mouse", description: "Best mouse ever", deadline: DateTime.now + 4.hour)