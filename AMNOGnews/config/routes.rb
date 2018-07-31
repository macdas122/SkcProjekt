Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "dashboard#index"
  devise_for :users
  devise_for :skcs
  resources :mains, only: [ :index, :show]
  resources :dashboard, only: [ :index]
end
