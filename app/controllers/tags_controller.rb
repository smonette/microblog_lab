class TagsController < ApplicationController

  before_action :is_authenticated?

	def index
		@tags = Tag.all
    @user = @current_user
	end

  def show
    tag_id = params[:id]
    @tag = Tag.find(tag_id)
  end

end