Rails.application.routes.draw do
  default_url_options :host => "localhost:3000"
  devise_for :users
  resources :users
  root "static_pages#home"

  resources :books
  namespace :admin do
    resources :users do
      get "delete"
    end
    resources :books do
      get "delete"
    end
    resources :publishers do
      get "get_publisher"
    end
  end
  resources :authors, only: %i(index show)

end
