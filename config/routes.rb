Rails.application.routes.draw do
  devise_for :users
  root to: "stores#index"
  resources :reviews
  resources :employees
  resources :departments
  resources :stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
