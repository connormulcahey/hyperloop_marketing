class PostsController < ApplicationController

	def index
		@posts = Post.all.order('created_at DESC')
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@passcode_correct = true
		@post = Post.new
	end

	def create
		@passcode_correct = (params[:password] == 'occupymars')
		@post = Post.new
		markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new)
		@post.title = params[:post][:title]
		if @passcode_correct && params[:post][:text] && params[:post][:title]
			@post.text = markdown.render(params[:post][:text])
			@post.save!
			redirect_to '/blog'
		else 
			render 'new'
		end
	end

end
