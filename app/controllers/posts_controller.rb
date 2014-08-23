class PostsController < ApplicationController
  def new
      user_id = params[:id]
      @user = User.find_by_id(user_id)
      @post = @user.posts.new
  end
  def create

  end
  def show
    id = params[:id]
    @post = Post.find_by_id(id)

    render :show

  end
end
