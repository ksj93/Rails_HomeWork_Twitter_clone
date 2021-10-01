class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
  end
  def create
    @post =Post.create(post_params)
    if @post.save
      redirect_to posts_path, notice: "投稿完了"
    else
      render:new
    end
  end
  def show
    @post = Post.find(params[:id])
  end
  def edit

  end
  def destroy
  end
  private
  def post_params
    params.require(:post).permit(:content)
  end
end
