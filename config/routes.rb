Rails.application.routes.draw do
  # Set default route to the main page 
  root "home#index"

  get "/about", to: "static_pages#about"
  get "/artist", to: "artist#index"
end
