Rails.application.routes.draw do
  
  root 'posts#index'
  devise_for :users
  resources :categories
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/posts/hashtag/:name', to:'posts#hashtags'
end
