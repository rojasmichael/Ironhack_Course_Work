class Lexiconomitron

	def eat_t(string)
     	if string.is_a? String
    	string.gsub(/[tT]/,'')
    	else
    	nil
  		end 
	end 

	def shazam (array)
    	if array.is_a? Array
   		 array.map do |word| 
      		eat_t(word).reverse!
   		 end
		else 
			[]
		end
 	end

 	def oompa_loompa(array)
 		if array.is_a? Array 
 		 	array_no_t = array.map do |word|
 		 		eat_t(word)
 		 	end

 		 	array_no_t.delete_if { |word| word.length > 3 }
 		 end
 	end


end

# lexi = Lexiconomitron.new
# lexi.eat_t("great scott!")
