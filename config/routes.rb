Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get 'home/index'
  resources :hardwares

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
