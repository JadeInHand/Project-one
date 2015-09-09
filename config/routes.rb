Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/maps' => 'pages#maps'
  resources :branches
  resources :pages
  resources :politicians
  resources :parties
end
