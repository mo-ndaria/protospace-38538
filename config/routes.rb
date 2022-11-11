Rails.application.routes.draw do
root to: "prototypes#index"
devise_for :users
resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy]
resources :prototypes do
resources :comments, only: :create
end
resources :users, only: :show
end
