class User < ApplicationRecord
	validates :name, presence: true, length: { minimum: 3, maximum: 10}
	validates :email, presence: true

	has_many :posts
	has_many :comments
end
