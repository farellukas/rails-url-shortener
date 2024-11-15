Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  # /links
  get "/links", to: "links#index", as: "links"
  post "/links", to: "links#create"
  get "/links/new", to: "links#new", as: "new_link"
  get "/to/:short_url", to: "links#redirect"
  delete "/links/:id", to: "links#destroy", as: "link"
end
