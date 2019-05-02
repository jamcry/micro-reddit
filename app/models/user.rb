class User < ApplicationRecord
	validates :name, presence: true, length: { minimum: 3, maximum: 10}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

	has_many :posts
	has_many :comments
end
