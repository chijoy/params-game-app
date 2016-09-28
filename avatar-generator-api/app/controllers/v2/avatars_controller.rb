class V2::AvatarsController < ApplicationController
  def index
    @avatars = Avatar.all
  end

  def show
    @avatar = Avatar.find(params[:id])
  end

  def create
    @avatar = Avatar.create(
                            image: params[:image],
                            name: params[:name]
                            )
    render 'show.json.jbuilder'
  end

  def update
    @avatar = Avatar.find(params[:id])
    @avatar.image = params[:image] if params[:image] 
    @avatar.name = params[:name] || @avatar.name
    @avatar.save
    
    render 'show.json.jbuilder'
  end

  def destroy
    @avatar = Avatar.destroy
  end
end
