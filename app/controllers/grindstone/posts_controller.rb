class Grindstone::PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  POST = Grindstone::Post

  # GET /posts
  def index
    @posts = POST.all
  end

  # GET /posts/1
  def show
  end

  # GET /posts/new
  def new
    @post = POST.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    @post = POST.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = POST.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params[:post]
    end
end