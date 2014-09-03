Rails.application.routes.draw do
  root "pages#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
  resources :registrations, only: [:new, :create]

end
