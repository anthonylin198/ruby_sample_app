Rails.application.routes.draw do
  root 'static_pages#home'

  get 'users/new'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  # user routes
  get '/signup', to: 'users#new'
  # sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :microposts, only: [:create, :destroy]
end
