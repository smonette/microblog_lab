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
    @post = @user.posts.new(new_post)
    tag_params = params[:tags].split(",").map(&:strip).map(&:downcase)

    if @post.save
        tag_params.each do |tag_str|
        tag = Tag.find_or_create_by(name: tag_str)
        @post.tags << tag
      end
      redirect_to [@user, @post]
    else
      render action: 'new'
    end
  end

  def edit
    @user = User.find_by_id(params[:user_id])
    @post = @user.posts.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:user_id])
    @post = @user.posts.find_by_id(params[:id])

    if @post
      update_post = params.require(:post).permit(:title, :body)
      @post.update_attributes(
        :title => update_post[:title],
        :body => update_post[:body])

      @post.tags.clear
      tag_params = params.require(:post).permit(:tags)[:tags].split(",").map(&:strip).map(&:downcase)
      tag_params.each do |tag_str|
        tag = Tag.find_or_create_by(name: tag_str)
        @post.tags << tag
      end
    end
    render :show
  end

  def destroy
    @post = @user.posts.find(params[:id])
    @post.destroy
    render :show
  end

end