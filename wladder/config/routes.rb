Rails.application.routes.draw do
   root "home#index"
   get 'guess', to: 'home#result'
end
