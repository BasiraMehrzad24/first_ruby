Rails.application.routes.draw do
#GET
  get "about", to:"about#index"
  get "stock", to:"stock#index"

root to: "main#index"
end
