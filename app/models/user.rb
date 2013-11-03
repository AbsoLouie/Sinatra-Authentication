class User < ActiveRecord::Base
	validates :email, uniqueness: true
	validates :email, format: { with: /\w{2,}[@]\w{2,}[.]\w{2,}/, message: "Improper Email Address" }

	include BCrypt

	def password
		@password ||= Password.new(password_hash)
	end

	def password=(new_password)
		@password = Password.create(new_password)
		self.password_hash = @password
	end
end
