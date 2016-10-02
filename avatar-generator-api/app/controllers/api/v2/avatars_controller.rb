class API::V2::AvatarsController < ApplicationController
  def index
    @avatars = Avatar.all
  end

  def create
    @avatar = Avatar.create(
                            image: params[:image],
                            name: params[:name]
                            )
    redirect_to "/api/v1/avatars/#{@avatar.id}.json"
  end




  def show
    @avatar = Avatar.find(params[:id])
  end

  def update
    @avatar = Avatar.find(params[:id])
    @avatar.update(
                    image: params[:image] || @avatar.image,
                    name: params[:name] || @avatar.name
      )
    
    redirect_to "/api/v1/avatars/#{@avatar.id}.json"
  end

  def destroy
    @avatar = Avatar.find(params[:id])
    @avatar = Avatar.destroy

    render json: {message: "employee deleted"}
  end
end
