class HubsController < ApplicationController

  def seed_files
    @posts = Post.all.order("created_at DESC")
  end

  def popular
    @posts_day = Post.most_hit(1.day.ago, 10) 
    @posts_week = Post.most_hit(1.week.ago, 10) 
    @posts_month = Post.most_hit(1.month.ago, 10) 
  end

  def random_view
    @posts_random = Post.offset(rand(Post.count)).limit(1)
  end

  def new_index
    @posts = Post.all.order("created_at DESC")
  end
end
