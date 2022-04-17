Rails.application.routes.draw do
  root 'blogs#index'
  resources :blogs do
    resource :favorites, only: [:create, :destroy]
  end
  devise_for :users
end
