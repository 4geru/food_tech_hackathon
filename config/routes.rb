Rails.application.routes.draw do
  resources :users, only: %i[show]
  resources :materials, only: %i[show]
  resources :photos, only: %i[create show]
end