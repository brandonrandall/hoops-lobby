Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get "/teams", to: "teams#index"
  get "/welcome", to: "welcome#index"
  
end
