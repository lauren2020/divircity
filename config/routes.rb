Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
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
