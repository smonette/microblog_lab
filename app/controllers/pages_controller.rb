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


	end

	def new
		user_id = params[:user_id]
		@user = User.find(user_id)

		@page = @user.pages.new
	end

	#working but cannot keep the user from adding more than one
	#about and contact
	def create
		user_id = params[:user_id]
		new_content = params.require(:page).permit(:content, :name)
		# page = Page.users.find_by_id(params[:id])
		# p page
		user = User.find(user_id)

		my_page = Page.create(new_content)

		user.pages << my_page

		redirect_to "/users/#{user.id}"
	end
 #edit page working
	def edit
    user_id = params[:id]
    @user = User.find_by_id(user_id)

    page_id = params[:id]
    @page = Page.find_by_id(page_id)


	end
#working on update
	def update

		user_id = params[:id]
		user = User.find(user_id)

		page_id = params[:id]
    page = Page.find_by_id(page_id)
    res = params.require(:page).permit(:name, :content)

    Page.update_attributes(
      :name => res[:name],
      :context  => res[:context])

    redirect_to "/users/#{user_id}/pages/#{page_id}"
	end


end
