Rails.application.routes.draw do
  devise_for :users
  resources :foods
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "foods#index"
end
