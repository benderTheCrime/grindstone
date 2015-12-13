class Grindstone::PostsController < ApplicationController
  before_action :set_post, only: [:show]
  layout 'grindstone/posts'

  POST = Grindstone::Post

  def index
    post_count = params[:post_count] || 10
    begin
      @posts = Grindstone::Post.paginate(:page => params[:page],
        :per_page => post_count)
    rescue NoMethodError
      @posts = POST.all
    end
  end

  def show
  end

  private

    def set_post
      @post = POST.find(params[:id])
    end
end