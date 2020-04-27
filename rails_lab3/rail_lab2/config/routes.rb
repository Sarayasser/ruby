Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  resources :articles  do
    resources :comments
  end
  # resources :users
  # resources :sessions
  get 'welcome/index' 
  # root 'users#index'
end