Rails.application.routes.draw do
  get 'welcome/index'
  get 'pages/cardapio'

  get 'pages/darcy'
  get 'pages/gama'
  get 'pages/ceilandia'
  get 'pages/planaltina'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
