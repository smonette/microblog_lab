class CommentsController < ApplicationController

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @user = User.find_by_id(params[:user_id])
    @post = Post.find_by_id(params[:post_id])
    comment_params = params[:comment].permit(:content)
    @comment = @post.comments.create(comment_params)
    redirect_to "/users/#{@user.id}/posts/#{@post.id}"
  end

end