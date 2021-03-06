class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, presence: true, length: { in: 5..16 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }
end
