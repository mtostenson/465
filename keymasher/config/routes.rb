Rails.application.routes.draw do

  root 'levels#index'
  
  resources :scores

  resources :levels

  devise_for :users

end
