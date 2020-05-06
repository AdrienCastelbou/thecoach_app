Rails.application.routes.draw do
  devise_for :coaches
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :coaches
  resources :users
  resources :programs
  resources :spheres
  root to: "coaches#index"
end
