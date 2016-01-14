class Person
	attr_reader :name 
	attr_accessor	:age

	def initialize (name, age)
		@name = name
		@age = age
	end
	def print_something
		puts = "#{name} and #{age}"
	end
end

Mike = Person.new("Mike", 33)
John = Person.new("John", 31)
puts Mike.age, Mike.name 
Mike.age = 20
puts Mike.age
Mike.name = "John"
#should result in error
puts Mike.name



