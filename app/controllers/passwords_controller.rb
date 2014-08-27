class PasswordsController < ApplicationController
  def new
  	#render reset password form
  end

  def create
  	user = User.find_by_email(params[:email])

  	if user
  		user.set_password_reset
  		UserMailer.password_reset(user).deliver
  	end

  	redirect_to login_url, notice: "Email was sent with instructions"

  end

  def edit
    @user = User.find_by_code(params[:id])
  end

  def update
    user = User.find_by_code(params[:id])
    res = params.require(:password).permit(:password, :password_confirmation)

    p res
    p params

    user.update_attributes(
      :password => res[:password],
      :password_confirmation => res[:password_confirmation])


    # if @user.save
    #   flash[:new_user] = "Message"
    #   redirect_to "/login"
    # else
      # if @user.password != @user.password_confirmation
      #   flash[:password_error] = "Message"
    #   # end
    # end
    user[:code] = nil
    redirect_to "/"
  end


end
