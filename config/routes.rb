Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :wines, only: [:index]
      resources :users, only: [:index, :update, :create]
      resources :foods, only: [:index]
      resources :favorites, only: [:index, :create, :destroy]
      resources :foodwines, only: [:index]
      resources :reviews, only: [:index, :update, :create, :destroy]
    end
  end
end
