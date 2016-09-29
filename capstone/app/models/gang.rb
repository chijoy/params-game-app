class Gang < ApplicationRecord
  has_many :image_gangs
  has_many :images, through: :image_gangs

end
