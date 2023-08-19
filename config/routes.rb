Rails.application.routes.draw do
  devise_for :users
  root to: "hobbies#index"
  resources :hobbies do
    resource :likes, only: [:create, :destroy]
  end
  resources :users, only: :show
end
