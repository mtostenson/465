Rails.application.routes.draw do

  root 'levels#index'
  
  post 'levels/:id', to: 'levels#index'
  
  post 'scores/testing'
  
  post 'add_score/:user_id/:level_id/:score', to: 'levels#over'
  
  resources :scores
  
  resources :levels

  devise_for :users

end
