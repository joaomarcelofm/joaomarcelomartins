Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/management', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'

  resources :projects, only: [:show]
  resources :blog_posts, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

