Rails.application.routes.draw do
  
  # root 'posts#index'
  root 'hubs#new_index'
  resources :sitemap, :only => :index
  get 'sitemap.xml', :controller => "sitemap", :action => "xml"
  
  devise_for :users
  resources :categories
  resources :posts
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/posts/hashtag/:name', to:'posts#hashtags'

  get '/404' , to: 'errors#not_found'
  get '/422' , to: 'errors#unacceptable'
  get '/500' , to: 'errors#server_errors'

  get 'hubs/seed_files'
  get 'hubs/about_us'
  get 'hubs/error_test'
  get 'hubs/popular'
  get 'hubs/random_view'
  get 'hubs/new_index'
end
