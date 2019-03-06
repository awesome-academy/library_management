Rails.application.routes.draw do
  root "static_pages#home"

  resources :books
  namespace :admin do
    resources :users do
      get "delete"
    end
  end

end
