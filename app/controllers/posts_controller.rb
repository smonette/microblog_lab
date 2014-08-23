class PostsController < ApplicationController
  def new
      @user = User.find_by_id(params[:user_id])
      @post = @user.posts.new
  end

  def create
    @user = User.find_by_id(params[:user_id])

      new_post = params.require(:post).permit(:title, :body)
      @post = @user.posts.create(new_post)

      render :show
  end

  def show
    id = params[:id]
    @post = Post.find_by_id(id)

    render :show

  end
end
