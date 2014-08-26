class PagesController < ApplicationController

  before_action :is_authenticated?

  def index
    res = params[:value]
    p res
  end

  def show
    page_id = params[:id]
    u_id = params[:user_id]
    @user = User.find_by_id(u_id)

    @page = Page.find_by_id(page_id)

    # @pages = @user.pages
    # p @pages
  end

  def new
    @user = current_user
    @page = @user.pages.new
    if User.find(params[:user_id]) != @current_user
      redirect_to root_path
    end
  end


  def create
    if User.find(params[:user_id]) == current_user
      @user = current_user
      new_page = params.require(:page).permit(:name, :content)

      if @user.pages.length == 1
          @user.pages.each do |page|
              if page[:name] == new_page[:name]
                redirect_to user_path(current_user)
              else
                my_page = Page.create(new_page)
                @user.pages << my_page
                redirect_to user_path(current_user)
              end
          end
      elsif @user.pages.length == 0
        my_page = Page.create(new_page)
        @user.pages << my_page
        redirect_to user_path(current_user)
      else
        redirect_to user_path(current_user)
      end
    else
      flash[:notice] = "oops please re-login..."
      session[:user_id] = nil
      redirect_to "/login"
    end
  end

  def edit
    @user = current_user
    @page = @user.pages.find_by_id(params[:id])
    if User.find_by_id(params[:user_id]) != @current_user
      redirect_to root_path
    end
  end

  def update
    if User.find(params[:user_id]) == current_user
      @user = current_user
      @page = @user.pages.find_by_id(params[:id])

      if @page
        update_page = params.require(:page).permit(:content)
        @page.update_attributes(:content => update_page[:content])
      end

      render :show

    else
      flash[:notice] = "oops please re-login..."
      session[:user_id] = nil
      redirect_to "/login"
    end

  end

end