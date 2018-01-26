Rails.application.routes.draw do
  root "home#index"
  get "/teams", to: "teams#index"
  get "/welcome", to: "welcome#index"
  resources :users, only: [:new, :create, :show]
end
