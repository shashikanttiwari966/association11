class UsersController < ApplicationController

  def index
  	# debugger
  	@users = User.all
  	@id =params[:id].to_i
  	@users.each do |user|
  		if @id == user.id
  			redirect_to new_post_path(user_id:user.id)
  		# else
  		# 	redirect_to users_login_path(massage:false)
  		end
  	end	
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(name:params[:user][:name])
  	@user.save
  	redirect_to user_path(@user)
  end

  def show
  	@user = User.find(params[:id])
  end

  def login
  	# @message = params[:message]
  end

end
