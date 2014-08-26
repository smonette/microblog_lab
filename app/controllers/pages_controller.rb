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
    user_id = params[:user_id]
    @user = User.find(user_id)

    @page = @user.pages.new
  end


  def create
    user_id = params[:user_id]
    @user = User.find(user_id)

    new_page = params.require(:page).permit(:name, :content)

    if @user.pages.length == 1
        @user.pages.each do |page|
            if page[:name] == new_page[:name]
              redirect_to "/users/#{user_id}"
            else
              my_page = Page.create(new_page)
              @user.pages << my_page
              redirect_to "/users/#{user_id}"
            end
        end
    elsif @user.pages.length == 0
      my_page = Page.create(new_page)
      @user.pages << my_page
      redirect_to "/users/#{user_id}"
    else
      redirect_to "/users/#{user_id}"
    end
  end

  def edit
    @user = User.find_by_id(params[:user_id])
    @page = @user.pages.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:user_id])
    @page = @user.pages.find_by_id(params[:id])

    if @page
      update_page = params.require(:page).permit(:content)
      @page.update_attributes(:content => update_page[:content])
    end

    render :show

  end




end