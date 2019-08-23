Rails.application.routes.draw do
  #root Home#index
  resources :login
  resources :user
  resources :community
  namespace :api do
    namespace :v1 do
        resources :communities
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
