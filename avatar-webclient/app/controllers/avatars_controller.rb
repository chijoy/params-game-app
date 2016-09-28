class AvatarsController < ApplicationController
  def index
    @avatars = Unirest.get("localhost:3001/avatars.json").body
  end

  def show
    @avatar = Unirest.get("localhost:3001/avatars/#{params[:id]}.json").body
  end
end
