# frozen_string_literal: true

class Admin::PostsController < Admin::BaseController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /admin/posts or /admin/posts.json
  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result.includes(:author).paginate(page: params[:page])
  end

  # GET /admin/posts/1 or /admin/posts/1.json
  def show
  end

  # GET /admin/posts/new
  def new
    @post = Post.new
  end

  # GET /admin/posts/1/edit
  def edit
  end

  # POST /admin/posts or /admin/posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to admin_post_url(@post), notice: "Post was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/posts/1 or /admin/posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to admin_post_url(@post), notice: "Post was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/posts/1 or /admin/posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to admin_posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :body, :image)
    end
end
