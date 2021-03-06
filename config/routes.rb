Rails.application.routes.draw do

  root "home#index"
  get "/teams", to: "teams#index"
  get "/welcome", to: "welcome#index"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  resources :users, only: [:new, :create, :show]

end
