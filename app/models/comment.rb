class Comment < ApplicationRecord
	validates :title, presence: true, length: { minimum: 5, maximum: 20 }
	validates :body,	presence: true, length: { minimum: 5, maximum: 120}

  belongs_to :post
  belongs_to :user
end
