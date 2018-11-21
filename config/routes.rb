Rails.application.routes.draw do


  root :to => redirect('/articles/new')	

  get 'welcome', to: 'welcome#index'	
  get 'welcome/index'

  resources :articles

  resources :cardapios

  root 'welcome#index'
end
