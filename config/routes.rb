Rails.application.routes.draw do

  get '/secret' => 'secrets#show', as: 'secret'
  get '/sessions' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
