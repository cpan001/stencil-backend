Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post "/signup", to: "users#create"
      post "/signin", to: "sessions#create"
      resources :designs, only: [:index, :show, :update] do
        resources :comments, only: [:index]
      end
      resources :projects, only: [:index]
      resources :comments, only: [:update]
      resources :users, only: [:index, :show] do
        resources :designs, only: [:create] do
          resources :comments, only: [:create, :show]
          resources :likes, only: [:create, :destroy]
        end
        resources :projects, only: [:create, :update]
        resources :relationships, only: [:create, :destroy]
      end
    end
  end
end
