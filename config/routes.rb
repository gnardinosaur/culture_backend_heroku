Rails.application.routes.draw do
  
  namespace :api do   
    namespace :v1 do
      resources :users
      resources :favorites
      resources :searches
      resources :artworks
      resources :results
    end
    
  end
end
