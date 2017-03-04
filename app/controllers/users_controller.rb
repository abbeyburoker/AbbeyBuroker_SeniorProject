class UsersController < ApplicationController
  def new
  end

  def show
  	@user = User.find(params[:id])
  	#when action is called id of user is passed as parameter
  	#find method finds particular user with id and returns it
  end
end
