Rails.application.routes.draw do
  resources :dinners
  resources :lunches
  resources :breakfasts
  resources :menus
  resources :customer_satisfactions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  scope path: 'dashboard', as: 'dashboard' do
    get 'home', to: 'dashboard#index'
  end

  devise_for :users
  get 'charts', to: 'customer_satisfactions#charts'
end
