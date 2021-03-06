Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post "/designs/save", to: "designs#save"
      get "/users/:user_id/usersselect/:input", to: "users#select"
      get "/users/:user_id/usersselect", to: "users#select"
      post "/signup", to: "users#create"
      post "/signin", to: "sessions#create"
      resources :designs, only: [:index, :show, :update] do
        resources :comments, only: [:index]
      end
      resources :projects, only: [:show] do
        resources :collaborations, only: [:create, :destroy]
      end
      resources :comments, only: [:update]
      resources :users, only: [:index, :show] do

        resources :designs, only: [:create] do
          resources :comments, only: [:create, :show]
          resources :likes, only: [:create, :destroy]
        end
        resources :projects, only: [:create, :update, :index]
        resources :relationships, only: [:create, :destroy]
        resources :project_designs, only: [:create]
      end
    end
  end
end
