class Avatar
  attr_accessor :image, :name
  
  def initialize(hash)
    @id = hash["id"]
    @image = hash["image"]
    @name = hash["name"]
  end

  def self.all 
    collection = []
    Unirest.get("#{ENV["api_domain_name"]}/api/vi/avatars.json").body.each do |hash|
      collection << Avatar.new(hash)
    end
    collection
  end

  def self.find(params_id)
    Avatar.new(Unirest.get("#{ENV["api_domain_name"]}/api/vi/avatars/#{params_id}.json")).body
  end
end