class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def new
  	@user = User.find(params[:user_id])
  	@posts = @user.posts
  	@post = Post.new
  end

  def create
  	@user = User.find(params[:post][:user_id])
  	@post = Post.new(post:params[:post][:post])
  	@save = @user.posts << @post
  	redirect_to root_path
  end

  def show
  end

  def destroy
  	@post = Post.find(params[:id])
  	@post.destroy
  end
end
