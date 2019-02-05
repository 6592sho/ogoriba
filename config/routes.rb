Rails.application.routes.draw do
  root to: "takers#index"
  get "/new", to: "takers#new"
  post "/create", to: "takers#create"
  get "/show/:id", to: "takers#show"
end
