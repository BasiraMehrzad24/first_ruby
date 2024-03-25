Rails.application.routes.draw do
#GET
  get "about-us", to:"about#index", as: :about
  get "stock", to:"stock#index"
 get "sign_up", to: "registrations#new"
 post "sign_up",  to: "registrations#create"
root to: "main#index"
end
