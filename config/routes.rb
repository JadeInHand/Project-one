Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :branches
  resources :pages
  resources :politicians
  resources :parties
end
