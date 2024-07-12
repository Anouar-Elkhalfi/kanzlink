Rails.application.routes.draw do
  resources :collections do
    resources :links, only: [:new, :create]
  end
  resources :links, except: [:new, :create]
  devise_for :users
   resources :links, except: [:new, :create]
  root 'pages#home'
end
