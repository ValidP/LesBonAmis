Rails.application.routes.draw do

  get 'users/new'

  get 'app_home/index'
  
  resources :expenses
  resources :users
  resources :friends

  
  root 'app_home#index'

end
