Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  get 'user/edit'
  get 'books/new'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
