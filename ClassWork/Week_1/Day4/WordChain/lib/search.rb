
require 'ruby-dictionary'

class Search


def initialize (first_word,second_word)

	@dictionary = Dictionary.from_file("/usr/share/dict/words")
	@user_input_start = first_word
	@users_input_end = second_word
end 

	def check_words

		if @user_input_start.length == @users_input_end.length
			if @dictionary.exists?(@user_input_start) && @dictionary.exists?(@users_input_end)
				true
			end
		else
			false 
		end 
 	end
	
	def search_words

		for i in (0..@user_input_start.length-1 )
			if @user_input_start[i] != @users_input_end[i]
				character = @user_input_start[i]
				@user_input_start[i]=@users_input_end[i]
				if !@dictionary.exists?(@user_input_start)
					@user_input_start[i] = character
				end
				puts @user_input_start
			end
		end
		search_words if @user_input_start != @users_input_end
	end

end
