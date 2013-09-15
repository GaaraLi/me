class CommentsController < ApplicationController
	def index
		@comments= Comment.find(:all)
	end

	def new
		@comment= Comment.new
	end

	def create
		@comment= Comment.new(params[:comment])
		if @comment.save
			redirect_to comments_path
		else
			render 'new'
		end
	end
end
