Rails.application.routes.draw do
  # resources for database pages (only products/show will be available to not logged users)
  resources :users
  resources :products
  resources :lines
  resources :series
  resources :factories
  resources :teams
  resources :countries
  
  # static pages routes
  get 'quem-somos', to: 'pages#about'
  get 'painel-admin', to: 'pages#painel'

  
  # sessions routes for login and logout sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  # root declaration ALWAYS LAST THING ON THIS FILE!!!
  root 'pages#home'
end
