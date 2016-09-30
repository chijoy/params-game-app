class Avatar
  attr_accessor :image, :name
  
  def initialize(hash)
    @id = hash["id"]
    @image = hash["image"]
    @name = hash["name"]
  end
end