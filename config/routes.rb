Rails.application.routes.draw do
  get 'parties/new'

  get 'parties/index'

  get 'parties/show'

  get 'parties/edit'

  root :to => 'pages#home'
  resources :branches
  resources :pages
  resources :politicians
end
