Rails.application.routes.draw do
  resources :reservations, only: [:index, :show, :create, :update, :destroy]
  resources :courts, only: [:index, :show]
end
