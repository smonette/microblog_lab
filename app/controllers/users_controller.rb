class UsersController < ApplicationController

  before_action :is_authenticated?

  #view all users
  def index
    @users = User.all
  end

  #form to create a new user
  def new
    if @current_user
      redirect_to root_path
    else
      @user = User.new
    end
  end

#create user
  def create
    new_user = params.require(:user).permit(:first_name, :last_name, :email, :password, :image_url)
    User.create(new_user)

    redirect_to "/users"
  end

  #show individual user
  def show
    user_id = params[:id]
    @user = User.find_by_id(user_id)

    @post = @user.posts.find_by_id(params[:id])
    @all_posts = @user.posts
  end

#edit user
  def edit
    user_id = params[:id]
    @user = User.find(user_id)
    @page = @user.pages.find_by_id(user_id)
    p @page
  end

#update user
  def update
    u_id = params[:id]

    res = params.require(:user).permit(:first_name, :last_name, :email, :image_url)
    user = User.find_by_id(u_id)

    user.update_attributes(
      :first_name => res[:first_name],
      :last_name  => res[:last_name],
      :email      => res[:email],
      :image_url  => res[:image_url])

    redirect_to "/users/#{u_id}"
  end

end
