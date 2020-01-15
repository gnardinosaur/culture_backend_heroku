Rails.application.routes.draw do
  
  namespace :api do   
    namespace :v1 do
      resources :users, only: [:create, :index]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      resources :favorites
      resources :searches
      resources :artworks
      resources :results
    end
    
  end
end
