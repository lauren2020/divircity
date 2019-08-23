Rails.application.routes.draw do
  #root Home#index
  resources :login
  resources :user
  resources :community
  namespace :api do
    namespace :v1 do
        resources :communities
        resources :users
    end
  end
end
