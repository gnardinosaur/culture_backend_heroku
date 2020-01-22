Rails.application.routes.draw do
  
  namespace :api do   
    namespace :v1 do
      resources :users, only: [:create, :index]
      get '/users/:id/favorites', to: 'users#favorite_works'
      get '/users/:id/scheduled_emails', to: 'users#scheduled_emails'
      get '/profile', to: 'users#profile'
      post '/login', to: 'auth#create'
      get '/auto_login', to: 'auth#auto_login'
      resources :favorites
      resources :schedules
      resources :artworks
      resources :emails
    end
    
  end
end
