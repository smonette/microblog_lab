class CommentsController < ApplicationController

  before_action :is_authenticated?

  # WE ARE NOT USING THE COMMENTS SHOW PAGE
  def show
    @comment = Comment.find(params[:id])
    @commentable_type = @comment.commentable_type

    if @commentable_type == "Post"
      @parent = Post.find(@comment.commentable_id)
      @user = User.find(@parent.user_id)

    elsif @commentable_type == "Comment"
      @parent = Comment.find_by_id(@comment.commentable_id)
    end

    @child = @comment.children.new
  end

  def create
    @user = User.find_by_id(params[:user_id])
    @post = Post.find_by_id(params[:post_id])
    comment_params = params[:comment].permit(:content)
    @comment = @post.comments.create(comment_params)
    redirect_to "/users/#{@user.id}/posts/#{@post.id}"
  end

  def create_child
    @comment = Comment.find_by_id(params[:id])
    @post = Post.find_by_id(@comment.commentable_id)
    @user = User.find_by_id(@post.user_id)
    child_params = params[:child].permit(:content)
    @child = @comment.children.create(child_params)
    redirect_to "/users/#{@user.id}/posts/#{@post.id}"
  end

end