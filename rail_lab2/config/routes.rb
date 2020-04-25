Rails.application.routes.draw do
  resources :articles  do
    resources :comments
  end
  resources :users
  resources :sessions
  get 'welcome/index' 
  root 'users#index'
end