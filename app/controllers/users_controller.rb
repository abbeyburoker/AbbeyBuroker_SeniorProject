class UsersController < ApplicationController
  def new
  	@user = User.new
  end


  def show
  	@user = User.find(params[:id])
  	#when this is called, the id of the user is passed
  end

  def create
  	@user = User.new(user_params)
  	#create a new user object
  	if @user.save
  		flash[:success] = "Account created successfully!"
  		#if user object saves successfully
  		redirect_to @user
  		#redirects to show action
  	else
  		render 'new'
  		#render new view
  	end
  end

  private
  def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	#these attributes are required to pass the new action
  end
end
