Rails.application.routes.draw do
  root "pages#home"
  
  get '/contacts' => "contacts#index"
  get '/contacts/add' => "contacts#add"
  get '/contacts/:id' => "contacts#show"
  post '/contacts' => "contacts#create"
  patch '/contacts/:id' => "contacts#update"
  delete '/contacts/:id' => "contacts#destroy"
  
  get '/opportunities' => "opportunities#index"
  get '/opportunities/:id' => "opportunities#show"
  post '/opportunities/:id' => "opportunities#create"
  patch '/opportunities/:id' => "opportunities#update"
  delete '/opportunities/:id' => "opportunities#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
