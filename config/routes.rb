Rails.application.routes.draw do
  devise_for :accounts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: 'public#homepage'

  resources :posts, only: [:new, :create, :destroy]

  resources :comments, only: [:create, :destroy]

  get "dashboard", to: 'accounts#index'

  get "profile/:username", to: 'accounts#profile', as: :profile

  get "post/update_page/:post_id", to: 'posts#update_page', as: :update_post_page

  patch "post/update/:post_id", to: 'posts#update_post', as: :update_post

  put "post/like/:post_id", to: 'likes#save_like', as: :like_post

  post "follow/account", to: "accounts#follow_account", as: :follow_account

  delete "unfollow/account/:following_id", to: "accounts#unfollow_account", as: :unfollow_account

  get "search", to: 'accounts#search'

end
