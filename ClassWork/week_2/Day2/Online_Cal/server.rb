
require_relative("lib/Calculator.rb")

require "sinatra"

get "/add" do
  erb(:add)
end

post "/save" do
  calc=Calculator.new 
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  operation = params[:operation]
  	if operation == "addition"
  	@result= calc.calculate_add(first, second)
  	"#{first} + #{second} = #{@result}"
	elsif operation == "subtraction"
	@result = calc.calculate_subtract(first, second)
	"#{first} - #{second} = #{@result}"
	elsif operation == "multiply"
	@result = calc.calculate_multi(first, second)
    "#{first} X #{second} = #{@result}"

	elsif operation == "divide"
	@result = calc.calculate_divide(first, second)
    "#{first} / #{second} = #{@result}"
	else
	"What happended bro!!!"
  	
	end
	erb(:save)

end



post "/success" do
	
	 save = params[:save]
	 IO.write("public/userfile.txt", save)
	 erb(:add)
end 
	




# post "/calculate_subtract" do
#   calc=Calculator.new 
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = calc.calculate_subtract(first, second)
#   "#{first} - #{second} = #{result}"
# end

# post "/calculate_multiply" do
#   calc=Calculator.new 
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = calc.calculate_multi(first, second)
#   "#{first} X #{second} = #{result}"
# end

# post "/calculate_divide" do
#   calc=Calculator.new 
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   result = calc.calculate_divide(first, second)
#   "#{first} / #{second} = #{result}"
# end