class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { in: 10..100 }
  validates :content, presence: true, length: { in: 300..2000 }
end
