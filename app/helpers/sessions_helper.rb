module SessionsHelper

	def log_in(user)
		session[:user_id] = user.id
		#saves user id to session hash
	end

	def current_user
		@current_user ||=User.find_by(id: session[:user_id])
		#if current user is not nil, return it otherwise assign to user object
	end

	def logged_in?
		!current_user.nil?
		#returns true if the user is logged in and false otherwise
	end

	def log_out
		session.delete(:user_id)
		@current_user = nil
		#deletes id of user when the user logsout
	end
end


