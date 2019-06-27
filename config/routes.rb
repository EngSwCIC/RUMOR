Rails.application.routes.draw do
  resources :dinners
  resources :lunches
  resources :breakfasts

  get 'menus/import', controller: 'menus', action: 'import', as: 'new_menus_import'
  resources :menus
  
  resources :customer_satisfactions

  get 'breakfast_satisfactions' => 'satisfactions_breakfast#index'
  get 'lunch_satisfactions' => 'satisfactions_lunch#index'
  get 'dinner_satisfactions' => 'satisfactions_dinner#index'

  root to: 'home#index'

  scope path: 'dashboard', as: 'dashboard' do
    get 'home', to: 'dashboard#index'
  end

  devise_for :users, skip: [:registrations]

  resources :users
  
  get 'charts', to: 'customer_satisfactions#charts'
end
