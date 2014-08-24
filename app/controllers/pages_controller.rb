class PagesController < ApplicationController

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

	#not working
	def create
		user_id = params[:user_id]
		new_content = params.require(:page).permit(:content)
		new_name = params.require(:page).permit(:name)
		p user_id
		user = User.find(user_id)
		my_page = Page.find_or_create_by(new_name, new_content)

		user.pages << my_page

		redirect_to "/users/#{user.id}"
	end


end
