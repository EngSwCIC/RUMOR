Rails.application.routes.draw do

  	

  get 'welcome', to: 'welcome#index'	
  get 'welcome/index'

  root 'welcome#index'
end
