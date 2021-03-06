class User
	include Mongoid::Document
	include ActiveModel::SecurePassword

	has_one :profile

	field :email, type: String
	field :password_digest, type: String

	validates :email, presence: true, uniqueness: true

	has_secure_password
	
end