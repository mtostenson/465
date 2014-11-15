Rails.application.routes.draw do

    resources :images do
        resources :tags, shallow: true
    end
    
    root 'images#index'

end
