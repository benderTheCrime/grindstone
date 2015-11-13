class Grindstone::PostsController < ApplicationController
  before_action :set_post, only: [:show]

  POST = Grindstone::Post

  # GET /posts
  def index
    @posts = POST.all
  end

  # GET /posts/1
  def show
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