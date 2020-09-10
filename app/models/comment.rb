class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :body, presence: true, length: { in: 1..250 }
end
