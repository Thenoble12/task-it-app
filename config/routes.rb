Rails.application.routes.draw do
  
  resources :users
  resources :tasks
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!

  get "/me", to: "users#show"
  post "/new", to: "tasks#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
