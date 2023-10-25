Rails.application.routes.draw do
  # Set default route to the main page
  root 'home#index'

  # about page route
  get '/about', to: 'static_pages#about'

  # artists page route
  resources 'artists', only: %i[index show]

  # albums page route
  resources 'albums', only: %i[index show]

  # songs page route
  resources 'songs', only: %i[index show]

  # search page route
  resources 'search', only: [:index, :show]
end
