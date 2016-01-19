
require_relative("lib/Calculator.rb")

require "sinatra"

get "/add" do
  erb(:add)
end

post "/calculate_add" do
  calc=Calculator.new 
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result= calc.calculate_add(first, second)
  "#{first} + #{second} = #{result}"
end

post "/calculate_subtract" do
  calc=Calculator.new 
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = calc.calculate_subtract(first, second)
  "#{first} - #{second} = #{result}"
end

post "/calculate_multiply" do
  calc=Calculator.new 
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = calc.calculate_multi(first, second)
  "#{first} X #{second} = #{result}"
end

post "/calculate_divide" do
  calc=Calculator.new 
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = calc.calculate_divide(first, second)
  "#{first} / #{second} = #{result}"
end