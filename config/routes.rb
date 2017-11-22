Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post "/signup", to: "users#create"
      resources :designs, only: [:index]
      resources :projects, only: [:index]
      resources :users do
        resources :designs, only: [:create, :update]
        resources :projects, only: [:create, :update]
      end
    end
  end
end
