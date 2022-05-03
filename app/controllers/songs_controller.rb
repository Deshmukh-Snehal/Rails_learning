class SongsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: %i[ show edit update destroy ]
  # before_action :correct_user, only: [:edit, :update, :destroy ]
  # GET songs List
  def index
    @posts = @sport.posts
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = @sport.posts.build
    # @post = current_user.posts.build
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    Post.transaction do
    @post = @sport.posts.build(post_params)
    # @post = current_user.posts.build(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to sport_posts_path(@sport), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
      if post_nil?
        raise ActiveRecord::Rollback
      end
      end
      redirect_to sport_posts_path, notice: "Please enter valid data"
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to sport_post_path(@sport), notice: "Post was successfully updated." }
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
      format.html { redirect_to sport_posts_path(@sport), notice: "Post was successfully destroyed." }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end

  # def correct_user
  #   @post = current_user.posts.find_by(id: params[:id])
  #   redirect_to posts_path, notice: "Unauthorized to edit this posts" if @post.nil?
  # end


  private
    def get_sport
      @sport = Sport.find(params[:sport_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = @sport.posts.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :description, :sport_id, :image, :player_id,  :user_id)
    end
end
