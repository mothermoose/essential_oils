Rails.application.routes.draw do
  get 'oils' => 'oils#index'
  get '/' => 'oils#index'

  get '/oils/new' => 'oils#new'
  post '/oils' => 'oils#create'

  get '/oils/:id' => 'oils#show'

  get '/oils/:id/edit' => 'oils#edit'
  patch 'oils/:id' => 'oils#update'

  delete '/oils/:id' => 'oils#destroy'
end
