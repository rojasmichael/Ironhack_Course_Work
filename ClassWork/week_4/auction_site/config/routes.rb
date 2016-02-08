Rails.application.routes.draw do
 # get "/" => "products#index"
 # get "/users/:user_id/products" => "products#index"
 resources :users, only: [:show]  do 
  resources :products, only: [:index, :new, :create]
end 
end
