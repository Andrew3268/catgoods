class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:show, :index, :hashtags]

  # GET /posts or /posts.json
  def index
    if params.has_key?(:category)
      @category = Category.find_by_name(params[:category])
      @pagy, @posts = pagy(@posts = Post.where(category: @category).order("created_at DESC"), items: 40)
    else
      @pagy, @posts = pagy(Post.all.order("created_at DESC"), items: 40)
      # @pagy, @posts = pagy(Post.offset(rand(Post.count)), items: 40)
    end  

    if params[:search]
      @search_term = params[:search]
      @posts = @posts.search_by(@search_term)
    end
  end

  # GET /posts/1 or /posts/1.json
  def show
    @post.punch(request)
    set_meta_tags title: @post.title,
                  site: 'JellyJellyJellyJelly',
                  revierse: true,
                  description: @post.title,
                  keywords: @post.key_word,
                  twitter: {
                    card: "summary",
                    site: "@JellyJellyJellyJelly",
                    title: @post.title,
                    description: @post.description,
                    image: @post.image
                  },
                  og: {
                    title: @post.title,
                    description: @post.description,
                    type: 'website',
                    url: post_url(@post),
                    image: @post.image
                  }
  end

  def hashtags
    tag = Tag.find_by(name: params[:name])
    @pagy, @posts = pagy(@posts = tag.posts.order("created_at DESC"), items: 40)
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)
    @post.user = current_user
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :link, :category_id, :image, :source, :hashtag, :rating, :review_count, 
                                   :is_price, :was_price, :pct, :description, :key_word, :star_5, :star_4_5, :star_4, :star_3_5, :star_3,
                                   :spare_01, :spare_56)
    end
end

