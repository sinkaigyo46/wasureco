Rails.application.routes.draw do
  devise_for :users
<<<<<<< Updated upstream
  root to: "hobbies#index"
  resources :hobbies
  resources :users, only: :show
=======
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
>>>>>>> Stashed changes
end
