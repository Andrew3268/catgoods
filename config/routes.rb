Rails.application.routes.draw do
  
  resources :feeds
  resources :jibsas
  root 'posts#index'
  # root 'jibsas#index'
  resources :sitemap, :only => :index
  get 'sitemap.xml', :controller => "sitemap", :action => "xml"
  
  devise_for :users
  resources :categories
  resources :posts
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/posts/hashtag/:name', to:'posts#hashtags'
  get '/jibsas/jhashtag/:name', to:'jibsas#hashtags'

  get '/404' , to: 'errors#not_found'
  get '/422' , to: 'errors#unacceptable'
  get '/500' , to: 'errors#server_errors'

  get 'hubs/seed_files'
  get 'hubs/about_us'
  get 'hubs/error_test'
  get 'hubs/popular'
  get 'hubs/random_view'
  get 'hubs/new_index'
  get 'hubs/popular_today'
  get 'hubs/dry_feed'
  get 'hubs/wet_feed'
  get 'hubs/nutrition_dic'
  get 'hubs/for_catfeed_store'
  get 'hubs/testing'
  get 'hubs/product_comparison'
  get 'hubs/compare_test'
  

  # Feed_detail
  get 'feed_detail/fd_01'
end
