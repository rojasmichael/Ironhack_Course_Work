
#split the sentence into a array
#sort the array
#return the array in ABC order

def something (variable)

variable2 = variable.split(" ").sort_by { | word | word.downcase}


p variable2	

end 

something ("This is my sentence")