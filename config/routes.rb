Rails.application.routes.draw do
  resources :menu_reviews
  resources :ru_reviews
  
  get 'welcome', to: 'welcome#index'	
  get 'welcome/index'
  root 'welcome#index'
end
