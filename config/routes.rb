Rails.application.routes.draw do
  resources :git_user_clients, only: [:index, :show, :create]
  delete '/git_user_clients/:id', to: 'git_user_clients#delete'
  resources :repositories, only: [:index, :create, :show, :update]
  resources :git_users, only: [:show, :create, :update]
  resources :clients, only: [:create, :update]
  get '/clients/:username', to: 'clients#login'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
