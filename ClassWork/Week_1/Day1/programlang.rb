
class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end

end

  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]

 	def array_printer(array)
	  	array.each do | language |
	    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
	  	end
	end 

  array_printer(array_of_languages)

aged_languages = array_of_languages.map do | language |
#Your code goes here
   language.age += 1

   language


end 
puts "The programming languages aged one year are:  "
array_printer(aged_languages)
# Output
# The programming languages aged by one year are:
# Language: Ruby |  Age: 22 |  Type System: Dynamic
# Language: Python |  Age: 25 |  Type System: Dynamic
# Language: JavaScript |  Age: 21 |  Type System: Dynamic
# Language: Go |  Age: 7 |  Type System: Static
# Language: Rust |  Age: 6 |  Type System: Static
# Language: Swift |  Age: 3 |  Type System: Static
# Language: Java |  Age: 21 |  Type System: Static


	sorted_languages = aged_languages.sort_by do | language |
		-language.age 
	end

	aged_languages



puts "The programming languages sort by age at :  "
array_printer(sorted_languages)



