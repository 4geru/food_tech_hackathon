Rails.application.routes.draw do
  resources :users, only: %i[show]
  resources :materials, only: %i[show]
end