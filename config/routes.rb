Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/maps' => 'pages#maps'
  resources :branches
  resources :pages
  resources :politicians
  resources :parties
  resources :users
  get '/users/new' => 'users#new'
  # get '/user/edit' => 'users#edit', as: 'edit_user'
  # post '/users' => 'users#create', as: 'users'
  get '/user/' => 'user#edit'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
