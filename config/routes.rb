Rails.application.routes.draw do
  get 'themes/index'
  get 'themes/edit'
  get 'themes/new'
  get 'themes/create'
  get 'themes/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
