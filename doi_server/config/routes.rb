Rails.application.routes.draw do
    
    resources :dois do
        resources :urls, shallow: true
    end
    
    root 'dois#index'
    get 'search', to: 'dois#index'
    get 'history', to: 'dois#history'
            
end
