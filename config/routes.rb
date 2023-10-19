Rails.application.routes.draw do
  get 'artist/index'
  get 'artist/show'
  # Set default route to the main page 
  root "home#index"

  get '/about', to: 'static_pages#about'
end
