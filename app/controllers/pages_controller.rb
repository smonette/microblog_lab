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


end
