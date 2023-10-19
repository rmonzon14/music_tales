Rails.application.routes.draw do
  get 'songs/controller'
  get 'songs/index'
  get 'songs/show'
  # Set default route to the main page 
  root "home#index"

  # about page route
  get "/about", to: "static_pages#about"

  # artists page route
  resources "artists", only: [:index, :show]

  # albums page route
  resources "albums", only: [:index, :show]
end
 