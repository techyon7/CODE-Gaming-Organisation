Rails.application.routes.draw do
  get 'users/update'


  get 'user/update'
  get 'user_events/update'

  get 'user_events/delete'

  root to: 'pages#home'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get 'home/index'

  get "/privacy-policy", to: redirect("privacy_policy.html")

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
