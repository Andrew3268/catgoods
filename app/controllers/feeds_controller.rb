class FeedsController < ApplicationController
  before_action :set_feed, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:show, :index, :hashtags]

  # GET /feeds or /feeds.json
  def index
    @pagy, @feeds = pagy(Feed.all.order("created_at DESC"), items: 10)
    @latest_feeds = Feed.last(1)
    @except_first_feeds = Feed.order("id desc").offset(1).all

    if params[:search]
      @search_term = params[:search]
      @feeds = @feeds.search_by(@search_term)
    end
  end

  # GET /feeds/1 or /feeds/1.json
  def show
  end

  # GET /feeds/new
  def new
    @feed = Feed.new
  end

  # GET /feeds/1/edit
  def edit
  end

  # POST /feeds or /feeds.json
  def create
    @feed = Feed.new(feed_params)
    @feed.user = current_user
    respond_to do |format|
      if @feed.save
        format.html { redirect_to @feed, notice: "Feed was successfully created." }
        format.json { render :show, status: :created, location: @feed }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @feed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feeds/1 or /feeds/1.json
  def update
    respond_to do |format|
      if @feed.update(feed_params)
        format.html { redirect_to @feed, notice: "Feed was successfully updated." }
        format.json { render :show, status: :ok, location: @feed }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @feed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feeds/1 or /feeds/1.json
  def destroy
    @feed.destroy
    respond_to do |format|
      format.html { redirect_to feeds_url, notice: "Feed was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed
      @feed = Feed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feed_params
      params.require(:feed).permit(:f_title, :f_link, :f_image, :f_hashtag, :f_key_word, :f_friendly_id, :f_description)
    end
end
