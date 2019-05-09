Rails.application.routes.draw do

  mount API::Base, at: "/"

  get 'events/index'

  get 'events/show'

  get 'user/update'
  get 'user_events/update'

  get 'user_events/delete'

  root to: 'pages#home'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}

  get 'home/index'
  resources :hardwares

  get "/privacy-policy", to: redirect("privacy_policy.html")

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
