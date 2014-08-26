class UsersController < ApplicationController

  # before_action :is_authenticated?

  def checkSesh
    if session[:user_id] == nil
      redirect_to '/login'
    end
  end

  #view all users
  def index
    checkSesh
    @users = User.all
  end

  #form to create a new user
  def new
    if session[:user_id] != nil
      redirect_to root_path
    else
      @user = User.new
    end
  end

#create user
  def create
    new_user = params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :image_url)
    User.create(new_user)
    flash[:alert] = "Message"
    redirect_to "/users"
  end

  #show individual user
  def show
    if session[:user_id] == nil
      redirect_to '/login'
    else 
      @current_user = User.find_by_id(session[:user_id])
    end
      
    user_id = params[:id]
    @user = User.find_by_id(user_id)

    @post = @user.posts.find_by_id(params[:id])
    @all_posts = @user.posts
    @current_user = @current_user
  end

#edit user
  def edit
    checkSesh
    user_id = params[:id]
    @user = User.find(user_id)

    @page = @user.pages.find_by_id(user_id)
    if @user != @current_user
      redirect_to "/users"
    end
  end

#update user
  def update
    checkSesh
    u_id = params[:id]

    res = params.require(:user).permit(:first_name, :last_name, :email, :image_url)
    user = User.find_by_id(u_id)

    user.update_attributes(
      :first_name => res[:first_name],
      :last_name  => res[:last_name],
      :email      => res[:email],
      :image_url  => res[:image_url])

    flash[:edited] = "Message"
    redirect_to "/users/#{u_id}"
  end

end
