require "sinatra"
require "sinatra/reloader" if development?


enable(:sessions)

get "/" do 
	erb(:login)
end

post "/logedin" do 
credentials = { "khalifenizar" => "swordfish", "jalexy12" => "password",}
username = params[:username]
password = params[:password]

end 