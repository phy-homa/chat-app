Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "rooms#index"  #基本画面設定
  resources :users, only: [:edit, :update, :destroy]
  resources :rooms, only: [:new,:create, :destroy] do
    resources :messages, only: [:create,:index]
  end
end
