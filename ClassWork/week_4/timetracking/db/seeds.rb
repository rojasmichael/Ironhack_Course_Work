# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create name: 'Ironhack', description: 'Ironhack is a...'
Project.create name: 'Time tracking app'
Project.create name: 'Project3', description: 'This is project 3'

25.Project do |t|
	Project.create(name: {i}, description: {i})
end

