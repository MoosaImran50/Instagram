Rails.application.routes.draw do
  devise_for :accounts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: 'public#homepage'

  resources :posts, only: [:new, :create, :show]

  get "dashboard", to: 'accounts#index'

  get "profile/:username", to: 'accounts#profile', as: :profile

  put "post/like/:post_id", to: 'likes#save_like', as: :like_post

  post "follow/account", to: "accounts#follow_account", as: :follow_account

  # Defines the root path route ("/")
  # root "articles#index"
end
