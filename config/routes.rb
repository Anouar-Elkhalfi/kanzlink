Rails.application.routes.draw do
  # Devise routes for user authentication
  devise_for :users
  # Root route
  root 'pages#home'
  # Nested routes for collections and links
  resources :collections do
    resources :links, only: [:new, :create]
  end
  # Routes for links outside the context of collections
  resources :links, except: [:new, :create]
end
