Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#home'
  get "/login",  to: "sessions#new"
  post "/", to: "sessions#create"
  delete '/logout', to: 'sessions#destroy'
  get '/secrets', to: 'secrets#show', as: 'secret'
end
