class CommentsController < ApplicationController

  def show
    @comment = Comment.find(params[:id])
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
    child_params = params[:child].permit(:content)
    @child = @comment.children.create(child_params)
    redirect_to "/comments/#{@comment.id}"
  end

end