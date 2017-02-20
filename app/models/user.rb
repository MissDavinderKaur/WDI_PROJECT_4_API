class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true,
  validates :alias, presence: true, uniqueness: true,
  validates :sector, presence: true, 
  validates :city, presence: true

end
