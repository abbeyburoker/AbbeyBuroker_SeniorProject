class User < ApplicationRecord

	before_save {email.downcase!}
	#forces the email to be converted into lowercase before it is saved to the database to enforce uniqueness

	validates :name, presence:true, length: {maximum: 50}
	#makes sure name ia present and sets char max to 50

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email, presence:true, length: {maximum: 250}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
	#checks email is present, sets max length, check appropriate format
	
	has_secure_password

	validates :password, presence:true, length: {minimum: 6}
end
