Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #index
  get "/songs" => "songs#index"
  #create
  post "/songs" => "songs#create"
  #read
  get "/songs/:id" => "songs#show"
  #update
  patch "/songs/:id" => "songs#update"
end
