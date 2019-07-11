Rails.application.routes.draw do
  resources :hora_de_funcionamentos
  resources :dinners
  resources :lunches
  resources :breakfasts

  get 'menus/import', controller: 'menus', action: 'import', as: 'new_menus_import'
  resources :menus
  
  resources :customer_satisfactions

  get 'breakfast_satisfactions' => 'satisfactions_breakfast#index'
  get 'lunch_satisfactions' => 'satisfactions_lunch#index'
  get 'dinner_satisfactions' => 'satisfactions_dinner#index'
  get 'user_one_groups' => 'user_one_groups#index'
  get 'user_two_groups' => 'user_two_groups#index'
  get 'user_three_groups' => 'user_three_groups#index'

  root to: 'home#index'
  
  scope path: 'dashboard', as: 'dashboard' do
    get 'home', to: 'dashboard#index'
  end

  devise_for :users, skip: [:registrations]

  resources :users
  
  get 'charts', to: 'customer_satisfactions#charts'
end
