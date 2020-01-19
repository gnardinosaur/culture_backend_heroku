Rails.application.routes.draw do
  
  namespace :api do   
    namespace :v1 do
      resources :users, only: [:create, :index]
      get '/user/:id/favorites', to: 'users#user_favorites'
      get '/profile', to: 'users#profile'
      post '/login', to: 'auth#create'
      resources :favorites
      resources :schedules
      resources :artworks
      resources :emails
    end
    
  end
end
