class Student
	attr_accessor :first_name, :scores, :grade, :average, :social

	def initialize(args, args2)   

		@first_name = args
		@scores = []
		@social = args2
		


	end

	def addascore(scores)
		@scores.push(scores)
	end

def average ()
			total = @scores.reduce do | previousNumber, nextNumber| 
			previousNumber + nextNumber
       		end  
	average = total / 5
	return average
end

	def letter_grade()
		if average >= 90 
			return "A"
		elsif average >=80 
			return "B"
		elsif average >= 70
			return "C"
		elsif average >= 60
			return "D"
		else average <= 59
			return "F"
		end 		
	end
end

def linear_search (students, first_name)
		 
		students.each_with_index do | student, index | 
			if student.first_name ==  first_name
				return index
			
			end

		end

		return -1 
end 

def binary_search (students, social)


	students.each_with_index do | student, index | 
			if student.social ==  social
				return index
			
			end


		
	end 
		return -1
	
end



student1 = Student.new("Alex", "111-11-1111")
student1.addascore(100)
student1.addascore(100)
student1.addascore(100)
student1.addascore(0)
student1.addascore(100)
puts student1.scores
puts student1.first_name
puts student1.social

student2 = Student.new("Michael", "111-22-111")
puts student2
puts student2.first_name

student3 = Student.new("Nizar", "111-33-111")
puts student3
puts student3.first_name

student4 = Student.new("Josh", "111-44-111")
puts student4
puts student4.first_name

student5 = Student.new("Chris", "111-55-111")
puts student5
puts student5.first_name


students = [ student1, student2, student4, student5 ]


p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0

p students[0].average == 80
p students[0].letter_grade == 'B'

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

p binary_search(students, "111-11-1111") == 0
p binary_search(students, "000-00-0000") == -1