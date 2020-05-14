Rails.application.routes.draw do
  devise_for :coaches
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :coaches do
    resources :programs
  end
  resources :coach_spheres, only: [:create, :destroy]
  resources :users
  resources :spheres
  root to: "coaches#index"
end
