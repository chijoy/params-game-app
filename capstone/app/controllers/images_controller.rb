class ImagesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @images = Image.all
    search_term = params[:search_term]
    start_date = params[:start]
    end_date = params[:end]

    if search_term
      fuzzy_search_term = "%#{search_term}%"
      @images = @images.where("status ILIKE ? OR assign_to_gang ILIKE ? OR street_address ILIKE ? OR city ILIKE ?", fuzzy_search_term, fuzzy_search_term, fuzzy_search_term, fuzzy_search_term)
    end

    if start_date && end_date
      layout = false
      @images = @images.where("DATE(created_at) >= ? AND DATE(created_at) <= ?", start_date, end_date)
    else 

      layout = true
    end

    if request.xhr? 
      @images = @images.map do |image| 
          {lat: image.latitude, 
          lng: image.longitude,
          id: image.id,
          gang: image.assign_to_gang, 
          status: image.status,
          surface_location: image.surface_location,
          type_of_surface: image.type_of_surface
          }

        end
      render json: @images
    else
      render :index, layout: layout
    end
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.create(
                          image: params[:image],
                          name: params[:name],
                          status: params[:status],
                          notes: params[:notes],
                          location: params[:location],
                          user_id: current_user.id,
                          assign_to_gang: params[:assign_to_gang],
                          type_of_surface: params[:type_of_surface],
                          surface_location: params[:surface_location],
                          graffiti_image: params[:graffiti_image],
                          street_address: params[:street_address],
                          city: params[:city],
                          state: params[:state]
                          )

    redirect_to '/'
  end

  def show
    @image = Image.find_by(id: params[:id])
  end

  def edit
    @image = Image.find_by(id: params[:id])
  end

  def update
    @image = Image.find_by(id: params[:id])
    @image.update(
                  image: params[:image],
                  name: params[:name],
                  status: params[:status],
                  notes: params[:notes],
                  location: params[:location],
                  assign_to_gang: params[:assign_to_gang],
                  type_of_surface: params[:type_of_surface],
                  surface_location: params[:surface_location],
                  street_address: params[:street_address],
                  city: params[:city],
                  state: params[:state]
                  )

    redirect_to "/images/#{@image.id}"
  end

  def destroy
    @image = Image.find_by(id: params[:id])
    @image.destroy

    redirect_to '/'
  end
end
