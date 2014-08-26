class PostsController < ApplicationController

  before_action :is_authenticated?

  def index
    @user = User.find_by_id(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
    @comment = @post.comments.new
  end

  def new
    @user = current_user
    @post = @user.posts.new
    if User.find(params[:user_id]) != @current_user
      redirect_to root_path
    end
  end

  def create
    if User.find(params[:user_id]) == current_user
      new_post = params.require(:post).permit(:title, :body)
      @user = current_user
      @post = @user.posts.new(new_post)
      tag_params = params[:tags].split(",").map(&:strip).map(&:downcase)

      if @post.save
          tag_params.each do |tag_str|
          tag = Tag.find_or_create_by(name: tag_str)
          @post.tags << tag
        end
        flash[:post_created] = "Message"
        redirect_to [current_user, @post]
      else
        render action: 'new'
      end
    else
      flash[:notice] = "oops please re-login..."
      session[:user_id] = nil
      redirect_to "/login"
    end
  end

  def edit
    @user = current_user
    @post = @user.posts.find_by_id(params[:id])
    if User.find(params[:user_id]) != @current_user
      redirect_to root_path
    end
  end

  def update
    if User.find(params[:user_id]) == current_user
      @user = current_user
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
      flash[:post_edited] = "Message"
      render :show
    else
      flash[:notice] = "oops please re-login..."
      session[:user_id] = nil
      redirect_to "/login"
    end
  end

  def destroy
    if User.find(params[:user_id]) == current_user
      @user = current_user
      @post = @user.posts.find(params[:id])
      @post.destroy
      redirect_to "/users/#{@user.id}"
     else
      flash[:notice] = "oops please re-login..."
      session[:user_id] = nil
      redirect_to "/login"
    end
  end

end