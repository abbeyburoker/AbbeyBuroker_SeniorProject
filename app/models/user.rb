class User < ApplicationRecord
	has_many :microposts

	before_save {email.downcase!}
	#forces email to be converted to lowercase before saved to database

	validates :name, presence: true, length: {maximum: 50}
	#makes sure the name is present and sets a max number of char

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
	
	validates :email, presence: true, length: {maximum: 250}, format:{with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
	#makes sure email is present, sets max length, ensure apropriate format, ensures uniqueness

	has_secure_password
	#adds the method to the user model

	validates :password, presence: true, length: {minimum: 6}	
end
