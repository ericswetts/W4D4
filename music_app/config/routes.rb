Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  resource :sessions, only: [:new, :show, :create, :destroy]
end
