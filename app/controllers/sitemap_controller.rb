class SitemapController < ApplicationController
  respond_to :xml
  def index
    @posts = Post.all.order("created_at DESC")
    @jibsas = Jibsa.all.order("created_at DESC")
  end
end
