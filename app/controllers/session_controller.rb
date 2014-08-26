class SessionController < ApplicationController

  def new
    #login form
    if session[:user_id] != nil
      redirect_to root_path
    end
  end

  def create
    @user = User.authenticate(params[:user][:email], params[:user][:password])

    if @user
      session[:user_id] = @user.id
      redirect_to root_path
    else
      #add flash message
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Message"
    redirect_to login_path
  end


end
