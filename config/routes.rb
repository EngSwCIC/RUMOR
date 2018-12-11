Rails.application.routes.draw do
  resources :rus
  resources :menu_reviews
  resources :ru_reviews
  
  get 'working_hour', to: 'working_hour#index', as: '/working_hour' 
  get 'view_rating', to: 'view_rating#index', as: '/view_rating' 
  get 'rus/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'rus#index'
  get 'welcome/index'
  get 'pages/cardapio'

  get 'pages/darcy'
  get 'pages/gama'
  get 'pages/ceilandia'
  get 'pages/planaltina'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
