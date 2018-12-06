Rails.application.routes.draw do
  resources :menu_reviews
  resources :ru_reviews
  get 'rumor/index'

  root 'rumor#index'
end
