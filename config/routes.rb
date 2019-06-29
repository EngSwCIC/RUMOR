Rails.application.routes.draw do
  resources :dinners do
    resources :review_dinners, except: [:show, :index]
  end
  resources :lunches do
    resources :review_lunches, except: [:show, :index]
  end
  resources :breakfasts do
    resources :review_breakfasts, except: [:show, :index]
  end

  get 'menus/import', controller: 'menus', action: 'import', as: 'new_menus_import'
  resources :menus
  
  resources :customer_satisfactions

  root to: 'home#index'

  scope path: 'dashboard', as: 'dashboard' do
    get 'home', to: 'dashboard#index'
  end

  devise_for :users
  get 'charts', to: 'customer_satisfactions#charts'
end
