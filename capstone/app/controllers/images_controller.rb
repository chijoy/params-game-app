class ImagesController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @images = Image.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    search_term = params[:search_term]

    if sort_attribute && sort_order
      @images = @images.order(sort_attribute => sort_order)
    elsif sort_attribute
      @images = @images.order(sort_attribute)
    end

    if search_term
      fuzzy_search_term = "%#{search_term}%"
      @images = @images.where("status ILIKE ? OR assign_to_gang ILIKE ?", fuzzy_search_term, fuzzy_search_term)
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
                          surface_location: params[:surface_location]
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
                  surface_location: params[:surface_location]
                  )

    redirect_to "/images/#{@image.id}"
  end

  def destroy
    @image = Image.find_by(id: params[:id])
    @image.destroy

    redirect_to '/'
  end
end
