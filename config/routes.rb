Rails.application.routes.draw do
  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # get 'cocktails/create'
  # resources :cocktails, only: [:index, :show, :new, :create]
  root to: "cocktails#home"
  resources :cocktails do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :doses, only: [:edit, :update, :destroy]
  resources :reviews, only: [:edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# nested resources is the same as using member
