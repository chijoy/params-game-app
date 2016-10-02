class User < ApplicationRecord
  has_many :images

  has_secure_password

  validates :cell_phone_number, presence: true
  validates :name, presence: true
  validates :email, presence: true
end
