class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	#finds the user with the supplied email
  	if user && user.authenticate(params[:session][:password])
  	#if the user is authenticated
  		log_in user
  		redirect_to user
  		#use the helper to log in and redirect the user's view
  	else
  		flash.now[:danger] = 'Invalid email/password combination'
  		render 'new'
  		#if authenticate fails, render the new view again so the user can try to log in again
  	end
  end

  def destroy
  	log_out
  	redirect_to root_url
  end
end
