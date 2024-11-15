Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  # /links
  get "/links", to: "links#index"
  post "/links", to: "links#create"
  get "/links/new", to: "links#new"
  get "/to/:short_url", to: "links#show"
end
