Rails.application.routes.draw do
  devise_for :users
  root to: "hobbies#index"
end
