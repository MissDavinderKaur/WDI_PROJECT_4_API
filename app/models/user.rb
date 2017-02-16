class User < ApplicationRecord
  has_secure_password
  validates :email, prescence: true, uniqueness: true
end
