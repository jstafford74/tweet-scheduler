Rails.application.routes.draw do
  get "about-us", to: "about#index", as: :about

  root to: "main#index"

  get "up" => "rails/health#show", as: :rails_health_check

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"
end
