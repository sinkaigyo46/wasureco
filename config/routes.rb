Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  
  root to: "hobbies#index"

  resources :hobbies, only: [:index,:new, :create, :show, :edit, :update,:destroy] do
    collection do
      get 'search'
    end
  
    resource :likes, only: [:create, :destroy]
  end
  resources :users, only: :show
end
