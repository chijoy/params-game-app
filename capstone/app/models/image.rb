class Image < ApplicationRecord
  belongs_to :user
  has_many :image_gangs
  has_many :gangs, through: :image_gangs
end
