Rails.application.routes.draw do
  root to: "dashboard#index"
  devise_for :users

  resources :care_actions, only: [:create, :index, :new]
end
