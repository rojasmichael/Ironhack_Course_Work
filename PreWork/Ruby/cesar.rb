def solve_cipher (word, num)

phrase = word.chars
string = ""
phrase.each do | letter | 

if letter == " "
   string += " "
elsif letter.ord >= 90 && letter.ord <= 98

string += ((letter.ord + num)+26).chr
else
 	 
	string += (letter.ord + num).chr

end
end 
puts string 
end 

solve_cipher("pb uhdo qdph lv grqdog gxfn", -3)