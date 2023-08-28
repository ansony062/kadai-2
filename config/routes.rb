Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users

  get 'homes/top'
  get 'homes/about', as: 'about'

  resources :books, only: [:index, :show, :create, :update, :edit, :destroy]
  resources :users, only: [:show, :edit, :index, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"


end
