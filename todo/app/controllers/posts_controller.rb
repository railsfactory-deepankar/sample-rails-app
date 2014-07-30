class PostsController < ApplicationController
	def index
		@post = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post].permit(:title,:status))
		if @post.save
	           redirect_to posts_path,:notice => "Your post was saved"
	        else
	           render "new"
                end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
	        if @post.update(params[:post].permit(:title, :status))
 	    		redirect_to posts_path, :notice => "Your post was updated"
	        else
	     		render "edit"
	   	end
		
	end
	def mark
		@post = Post.find(params[:post_id])
		@post.update(:status => "completed")
		redirect_to posts_path, :notice => "Your post was successfully marked"


	end
	def destroy
		@post = Post.find(params[:id])
	        @post.destroy
		redirect_to posts_path, :notice => "Your post was deleted"
	
	end
end
