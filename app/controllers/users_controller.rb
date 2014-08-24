class UsersController < ApplicationController

  #view all users
  def index
    @users = User.all
  end

  #form to create a new user
  def new
    @user = User.new
  end


  def create
    new_user = params.require(:user).permit(:first_name, :last_name, :email, :image_url)
    User.create(new_user)

    p new_user
    redirect_to "/users"
  end

  #show individual user
  def show
    user_id = params[:id]
    @user = User.find_by_id(user_id)
  end

  def edit
    user_id = params[:id]
    @user = User.find(user_id)

  end

  def update
    u_id = params[:id]

    res = params.require(:user).permit(:first_name, :last_name, :email, :image_url)

    user = User.find_by_id(u_id)

    user.update_attributes(
      :first_name => res[:first_name],
      :last_name  => res[:last_name],
      :email      => res[:email],
      :image_url  => res[:image_url])
    p user

    redirect_to "/users/#{u_id}"
  end

end
