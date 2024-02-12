class User < ApplicationRecord
  has_many :posts
  validates :username, presence: true, length: { minimum: 3, maximum: 25 }, uniqueness: true
  validates :email, presence: true, length: { maximum: 105 }, uniqueness: true
  
end
