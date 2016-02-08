# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Concert.create(artist: "Metal", venue: "Park", date: DateTime.now, price: 100, description: "Best Metal Band")
Concert.create(artist: "Spanish", venue: "Autirum", date: DateTime.now + 1.hour, price: 150, description: "Best Spanish Band")
Concert.create(artist: "Rap", venue: "Club", date: DateTime.now + 3.hour, price: 300, description: "Best Rap Band")