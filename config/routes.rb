Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/management', as: 'rails_admin'
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'pages#home'

  resources :projects, only: [:show]
  resources :blog_posts, only: [:show], path: 'blog'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

