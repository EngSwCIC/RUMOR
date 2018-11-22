Rails.application.routes.draw do
  resources :menu_reviews
  resources :ru_reviews
  get 'rumor/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'rumor#index'
end
