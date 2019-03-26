Rails.application.routes.draw do
  root "pages#home"
  
  get '/contacts' => "contacts#index"
  get '/contacts/add' => "contacts#add"
  get '/contacts/:id' => "contacts#show"
  get '/contacts/:id/update' => "contacts#change"
  post '/contacts' => "contacts#create"
  patch '/contacts/:id' => "contacts#update"
  delete '/contacts/:id' => "contacts#destroy"
  
  get '/contacts/:id/add' => "opportunities#add"
  get '/opportunities' => "opportunities#index"
  get '/opportunities/:id/update' => "opportunities#change"
  get '/opportunities/:id' => "opportunities#show"
  post '/opportunities/:id' => "opportunities#create"
  patch '/opportunities/:id' => "opportunities#update"
  delete '/opportunities/:id' => "opportunities#destroy"
  
  get '/opportunities/:id/add' => "todolists#add"
  post '/todo/:id' => "todolists#create"
end
