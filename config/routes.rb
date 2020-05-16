Rails.application.routes.draw do
  devise_for :coaches, controllers: { sessions: "coaches/sessions" }
  devise_for :users, controllers: { sessions: "users/sessions" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :coaches do
    resources :programs
    resources :avatar, only: [:create]
  end
  resources :coach_spheres, only: [:create, :destroy]
  resources :users
  resources :spheres
  root to: "coaches#index"
end
