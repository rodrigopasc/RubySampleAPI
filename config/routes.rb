Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :auth, only: :create

  namespace :api do
    resources :products
  end
end
