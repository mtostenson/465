Rails.application.routes.draw do
  
  devise_for :users
  
  resources :image_users

  resources :tags

  resources :images

  resources :images do
       resources :tags, shallow: true
       resources :image_users, shallow: true
    end
  
  root 'images#index'
  
end
