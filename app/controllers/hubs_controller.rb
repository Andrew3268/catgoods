class HubsController < ApplicationController

  def seed_files
    @posts = @posts = Post.all.order("created_at DESC")
  end
end
