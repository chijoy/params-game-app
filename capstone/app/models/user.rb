class User < ApplicationRecord
  has_many :images

  has_secure_password

  validates :password, presence: true
  validates :email, presence: true
end
