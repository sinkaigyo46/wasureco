Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  
  root to: "hobbies#index"
  resources :hobbies do
    resource :likes, only: [:create, :destroy]
  end
  resources :users, only: :show
end
