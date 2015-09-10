Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :branches
  resources :pages
  resources :politicians
  resources :parties
  resources :users
  get '/users/new' => 'users#new'
  get '/user/' => 'user#edit'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
