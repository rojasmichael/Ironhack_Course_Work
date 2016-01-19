require "sinatra"

get "/" do 
	"My first Sinatra app."
end

get "/about" do 
	"My name is Michael Rojas."
end

get "/hi" do
	time = Time.now 
	@my_time = time.strftime("%c")
	erb(:hi)

end
