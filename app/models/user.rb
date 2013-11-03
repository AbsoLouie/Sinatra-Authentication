class User < ActiveRecord::Base
  validates :email, uniqueness: true
  validates :email, format: { with: /\w{2,}[@]\w{2,}[.]\w{2,}/, message: "Improper Email Address" }
end
