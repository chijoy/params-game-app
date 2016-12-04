class Image < ApplicationRecord
  belongs_to :user
  has_many :image_gangs
  has_many :gangs, through: :image_gangs

  def pretty_created_at
    created_at.strftime("%m/%d/%Y")
  end

  def pretty_updated_at
    updated_at.strftime("%m/%d/%Y")
  end

  def full_address
    "#{street_address} #{city} #{state}"
  end
end
