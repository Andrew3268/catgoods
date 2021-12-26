class JibsasController < ApplicationController
  before_action :set_jibsa, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:show, :index, :hashtags]

  # GET /jibsas or /jibsas.json
  def index
    @pagy, @jibsas = pagy(Jibsa.all.order("created_at DESC"), items: 40)
    @latest_feeds = Feed.last(1)
    @except_first_feeds = Feed.order("id desc").offset(1).all
    ### Blog에 사용할것
    # @latest_post = Jibsa.last(1) #마지막 포스팅만 보여준다
    # @except_first_posts = Jibsa.order("id desc").offset(1).all #마지막 포스팅만 뺴고 보여준다
    

    if params[:search]
      @search_term = params[:search]
      @jibsas = @jibsas.search_by(@search_term)
    end
  end

  # GET /jibsas/1 or /jibsas/1.json
  def show
    @jibsa.punch(request)
  end

  def hashtags
    tag = Tag.find_by(name: params[:name])
    @jibsas = tag.jibsas.order("created_at DESC")
  end

  # GET /jibsas/new
  def new
    @jibsa = Jibsa.new
  end

  # GET /jibsas/1/edit
  def edit
  end

  # POST /jibsas or /jibsas.json
  def create
    @jibsa = Jibsa.new(jibsa_params)
    @jibsa.user = current_user
    respond_to do |format|
      if @jibsa.save
        format.html { redirect_to @jibsa, notice: "Jibsa was successfully created." }
        format.json { render :show, status: :created, location: @jibsa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jibsa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jibsas/1 or /jibsas/1.json
  def update
    respond_to do |format|
      if @jibsa.update(jibsa_params)
        format.html { redirect_to @jibsa, notice: "Jibsa was successfully updated." }
        format.json { render :show, status: :ok, location: @jibsa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jibsa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jibsas/1 or /jibsas/1.json
  def destroy
    @jibsa.destroy
    respond_to do |format|
      format.html { redirect_to jibsas_url, notice: "Jibsa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jibsa
      @jibsa = Jibsa.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jibsa_params
      params.require(:jibsa).permit(:j_title, :j_link, :j_image, :j_source, :j_hashtag, :j_rating, :j_review_count, :j_key_word, 
                                    :j_link, :j_is_price, :j_was_price, :j_pct, :j_friendly_id)
    end
end


