class User < ApplicationRecord
	before_save{email.downcase!}
	#forces email to be converted into lowercase before it is saved to the database, enforce uniqueness
	validates :name, presence: true, length: {maximum: 50}
	#makes sure name is present and sets a maximum length of 50 characters
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
	validates :email, presence: true, length: {maximum: 250}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
	#makes sure email is present, sets maximum length, and checks that format is correct and endures uniqueness; not case sensitive
	has_secure_password
	#adds the method to User model
	validates :password, presence: true, length: {minimum: 6}	
end
