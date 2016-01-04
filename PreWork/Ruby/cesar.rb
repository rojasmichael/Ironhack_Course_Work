def solve_cipher (word, num)

phrase = word.chars
string = ""
phrase.each do | letter | 

if letter == " "
   string += " "
else 
	string += (letter.ord + num).chr
end
end 
puts string 
end 

solve_cipher("hello test",-1)