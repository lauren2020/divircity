Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  resources :users
  namespace :api do
    namespace :v1 do
        resources :communities
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
