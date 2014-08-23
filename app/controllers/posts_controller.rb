class PostsController < ApplicationController
  def new
      user_id = params[:user_id]
      @user = User.find_by_id(user_id)
      @post = @user.post.new
  end
  def create

  end
  def show
    id = params[:id]
    @post = Post.find_by_id(id)

    render :show

  end
end
