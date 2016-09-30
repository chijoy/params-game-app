class AvatarsController < ApplicationController
  def index
    @avatars = []
    Unirest.get("#{ENV["api_domain_name"]}/v1/avatars.json").body.each do |avatar_hash|
      @avatars << Avatar.new(avatar_hash)
    end
  end

  def new
  end

  def create
    @avatar = Unirest.post("#{ ENV["api_domain_name"] }/v1/avatars",
                            headers: {"Accept" => "application/json"},
                            parameters: {
                              image: params[:image],
                              name: params[:name]
                            }).body

    redirect_to "/avatars/#{@avatar[:id]}"
  end

  def show
    @avatar = Avatar.new(Unirest.get("localhost:3001/avatars/#{params[:id]}.json").body)
  end

  def edit
    @avatar = Unirest.get("localhost:3001/avatars/#{params[:id]}.json").body
  end

  def update
    @avatar = Unirest.patch("#{ENV["api_domain_name"]}/v1/avatars/#{params[:id]}",
                                      headers: {"Accept" => "application/json"},
                                      paramters: {
                                        image: params[:image],
                                        name: params[:name]
                                        }).body

    redirect_to "/avatars/#{@avatar["id"]}"
  end

  def destroy
    response = Unirest.delete("#{ENV["api_domain_name"]}/api/v1/avatars/#{params[:id]}",
                              headers: {"Accept" => "application/json"}).body

    flash[:success] = response["message"]
    redirect_to "/avatars"
  end
end
