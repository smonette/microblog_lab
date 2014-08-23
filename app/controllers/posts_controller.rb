class PostsController < ApplicationController
  def index
    @user = User.find_by_id(params[:user_id])
  end
  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
  end

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

  def edit
    @user = User.find_by_id(params[:user_id])
    @post = @user.posts.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:user_id])
    @post = @user.posts.find_by_id(params[:id])
    update_post = params.require(:post).permit(:title, :body)

    @post.update_attributes(
      :title => update_post[:title],
      :body => update_post[:body])
    render :show
  end

  def destroy
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
    @post.destroy
    render :show
  end

end
