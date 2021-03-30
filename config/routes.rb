Rails.application.routes.draw do
  resources :git_user_clients, only: [:create, :delete]
  resources :repositories, only: [:index, :show, :update]
  resources :git_users, only: [:show, :create, :update]
  resources :clients, only: [:create, :show, :update]

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
