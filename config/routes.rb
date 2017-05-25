Rails.application.routes.draw do
  get 'oils' => 'oils#index'
  get '/' => 'oils#index'

  get '/oils/new' => 'oils#new'
  post '/oils' => 'oils#create'

  get '/oils/:id' => 'oils#show'

  get '/oils/:id/edit' => 'oils#edit'
  patch 'oils/:id' => 'oils#update'

  delete '/oils/:id' => 'oils#destroy' 

  get '/random' => 'oils#random' 

  get "/signup" => "users#new"
  post "/users" => "users#create" 

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"

  get "/cart" => "carted_products#index"
  post "/cart" => "carted_products#create"
  delete '/carted_products/:id' => 'carted_products#destroy'
  

end
