Rails.application.routes.draw do
  root to: "care_actions#new"
  devise_for :users

  resources :care_actions, only: [:create, :index, :new]
end
