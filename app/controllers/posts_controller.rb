class PostsController < ApplicationController

  def index
  @posts = Post.find(Post.pluck(:id).sample)
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to user_path(current_user)
  end


private
  def post_params
    params.require(:post).permit(:description, :image, :user_id)
  end
end
