Rails.application.routes.draw do
  devise_for :users
  root to: "takers#index"
  get "/new", to: "takers#new"
  post "/create", to: "takers#create"
  get "/show/:id", to: "takers#show"
  get "/taker/:id/edit", to: "takers#edit"
  patch "/taker/:id", to: "takers#update"
  delete "/taker/:id", to: "takers#destroy"
  get "/messages/:id", to: "takers#message"
  get "/mypage/:id", to: "takers#mypage"
  get "/help", to: "takers#help"
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]
end
