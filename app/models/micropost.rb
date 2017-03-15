class Micropost < ApplicationRecord
  belongs_to :user, dependent: :destroy
  #connects to user model and ensures when user is destroyed along with its microposts
  
  validates :content, presence:true, length: {maximum: 140}
  #ensures content is not null and restricts it to a max of 140 characters
  
  validates :user_id, presence: true
  #ensures each micropost has a user_id
end
