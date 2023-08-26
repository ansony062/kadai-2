Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'books/index'
  get 'books/show'
  get 'books/create'
  get 'books/edit'
  get 'books/update'
  get 'books/destroy'
  devise_for :users
  get 'homes/top'
  
  resources :books, only[:index, :show, :create, :update, :destroy]
  reso
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  
  
end
