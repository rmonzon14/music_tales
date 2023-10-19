Rails.application.routes.draw do
  # Set default route to the main page 
  root "home#index"

  # about page route
  get "/about", to: "static_pages#about"

  #artists page route
  resources "artists", only: [:index, :show]
end
 