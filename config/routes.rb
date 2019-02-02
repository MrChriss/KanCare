Rails.application.routes.draw do
  root to: "care_actions#new"
  devise_for :users

  resources :users, only: [:edit, :update]
  resources :care_actions, except: %i(edit)
end
