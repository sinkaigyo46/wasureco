Rails.application.routes.draw do
  devise_for :users
  root to: "hobbies#index"
  resources :hobbies
  resources :users, only: :show
end
