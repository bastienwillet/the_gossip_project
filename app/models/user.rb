class User < ApplicationRecord
	has_many :cities
	has_many :gossips
	has_and_belongs_to_many :gossips
	has_many :comments
	has_many :commentcomments
end
